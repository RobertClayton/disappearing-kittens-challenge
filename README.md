**Problem Description**  

As you are probably aware, kittens have been disappearing across the neighbourhood. The news networks have been reporting that these kittens have been abducted by a mysterious woman, dressed in black. Not much is known about this woman and the town is fraught with fear as the search continues.

We have been tracking unusual anomalies above the rooftops that we have identified as some kind of flying craft. It seems that over the past few weeks, this craft has been present during the abductions of the missing kittens. Unfortunately, we have been unable to pinpoint its location.

The only information we have comes from a member of the public who claims to have witnessed one of the abductions:

_"It had just turned midnight and I couldn't sleep. I headed into the kitchen to grab a midnight snack when I heard something coming from outside. I wasn't sure what it was at first, but then I started to hear what I thought was someone laughing. It sounded more sinister than that, though. It was more of a cackle."_

_"It took a little time for my eyes to adjust to the light as I peered outside the kitchen window. I could just make out a pointy figure wearing dark clothing. In one hand she had a long stick of some sort, in the other she was clutching onto something fluffy!"_

_"I'd seen the news stories and I immediately jumped into action. I ran outside shouting and screaming but it was too late. The mysterious woman was gone before I knew it. I don't know where to... she just seemed to vanish."_

The forensics investigators arrived at the scene the next morning. They found no evidence of an abduction, but they did find a scrap of paper with some scribbled writing on it. We've had our specialists look at the piece of paper and we've concluded the following information:

_"It seems that the evidence obtained from the scene of the crime is some kind of flight map. We think that the suspect uses this map to direct herself to and from her lair. We're hopeful that we can use this to locate the missing kittens."_

_"The woman uses a grid system to navigate. She starts facing north at coordinate (0, 0) and uses relative directions to find her way. For example, if she is heading east and turns 'right', she will be facing south. When she moves 'forward', her coordinate is updated based on the direction she is facing."_

I hope that makes sense. We're having a hard time piecing all of the information together and we'd like you to help. Unfortunately, this information is classified and you'll have to speak to our forensics API to access it. There are details on how to do this below.

Please help us save our pets. We wish you the best of luck!

**Forensics API Specification**  

The forensics API can be accessed from this host and has just two actions: 'directions' and 'location'. Both actions require that a valid email address be passed in, to prove your identity:

 HTTP Verb	| Action | Path
---|---|---  
GET	| directions | /api/:email/directions
GET	| location	| /api/:email/location/:x/:y

The 'directions' action may be called freely and returns the forensics evidence we have gathered. The response body is in JSON format and it should be apparent how to process it.

Once you have figured out the location of the missing kittens, you may take a guess with the 'location' action. Include the 'x' and 'y' coordinates of your guess in the URL and we'll send a search party out immediately!

Be warned: We have limited resources and cannot repeatedly send out search parties. Therefore, we cannot allow more than five guesses as to the whereabouts of the kittens.

You can check whether you were successful by inspecting the body of the 'location' response.
