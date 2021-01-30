import csv

with open('2rawlist.txt') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
            print(f'{row[1]}')
            line_count += 1
    print(f'Processed {line_count} lines.')
