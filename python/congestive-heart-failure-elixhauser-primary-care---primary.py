# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"8CMK.00","system":"readv2"},{"code":"14AM.00","system":"readv2"},{"code":"9m5..00","system":"readv2"},{"code":"1O1..00","system":"readv2"},{"code":"402 C","system":"readv2"},{"code":"8H2S.00","system":"readv2"},{"code":"G580400","system":"readv2"},{"code":"G58z.00","system":"readv2"},{"code":"8HBE.00","system":"readv2"},{"code":"4271H","system":"readv2"},{"code":"7824FM","system":"readv2"},{"code":"G580100","system":"readv2"},{"code":"G58z.11","system":"readv2"},{"code":"661M500","system":"readv2"},{"code":"7824BW","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('congestive-heart-failure-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["congestive-heart-failure-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["congestive-heart-failure-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["congestive-heart-failure-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
