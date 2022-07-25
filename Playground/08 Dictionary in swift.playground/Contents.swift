var youtubeVideos: [String: Int] = [
    "react course": 1122,
    "angular course": 3344,
    "nodejs course": 5566
]

var angularVideo = youtubeVideos["angular course"]

youtubeVideos.keys
youtubeVideos.values

[String](youtubeVideos.keys)

var nodejsId = youtubeVideos.updateValue(6666, forKey: "nodejs course")
youtubeVideos

//youtubeVideos["nodejs course"] = nil
youtubeVideos.removeValue(forKey: "nodejs course")


var faq = [
    "faq 1": [
        "question": "What's the start date of course",
        "answer": "tomorrow"
    ],
    "faq 2" : [
        "question": "What's the price",
        "answer": "50K INR"
    ]
]

var  questionTwo = faq["faq 2"]?["question"]
