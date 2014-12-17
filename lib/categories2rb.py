#!/usr/bin/python
import re

def get_types_as_array(filename):
    broad = []
    narrow = set()
    fp = open(filename, 'r')
    for line in fp:
        if re.match(r'\t.*', line):
            narrow.add(line.strip())
        else:
            broad.append(line.strip())
    fp.close()
    return (broad, narrow)

def get_types_as_dict(filename):
    narrow = {}
    fp = open(filename, 'r')
    current_broad = ""
    for line in fp:
        if re.match(r'\t.*', line):
            item = line.strip()
            if not item in narrow:
                narrow[item] = [current_broad]
            else:
                narrow[item].append(current_broad)
        else:
            current_broad = line.strip()
    return narrow

def write_ruby_from_list(iterable):
    print '<li><div><%= check_box_tag :"categories[]", "any", @categories.include?("any") %></div><div><%= label_tag :any, "Any", class: "any" %></div></li>'
    for item in sorted(iterable):
        first = re.sub(r"[^a-z].*","",item)
        print ('<li><div><%%= check_box_tag :"categories[]", "%s", @categories.include?("%s") %%></div><div><%%= label_tag :%s, "%s"%%></div></li>'%
               (first, first, first, item.capitalize()))


def write_ruby_from_dict(narrow_dict):
    for key in sorted(narrow_dict.keys()):
        value = narrow_dict[key]
        keynam = key.replace("'", r"\'").replace('"', r'\"').upper()
        firsts = " ".join([re.sub(r"[^a-z].*","",item) for item in value]) + " any"
        print ('<li data_case_category="%s"><div><%%= check_box_tag :"incidents[]", "%s", @incidents.include?("%s") %%></div><div><%%= label_tag :"%s", "%s"%%></div></li>'%
               (firsts, keynam, keynam, keynam, key.capitalize()))

narrow = get_types_as_dict("incident_categories.txt")
write_ruby_from_dict(narrow)

#broad, narrow = get_types_as_array("incident_categories.txt")
#write_ruby_from_list(broad)
