samplelist = open("samplelist.txt")
for channelID in samplelist.readlines():
	print(channelID)
samplelist.close()