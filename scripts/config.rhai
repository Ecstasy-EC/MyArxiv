let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_method = ["Optimization","Mapping","Learning","SLAM", "Odometry","GPU","Parallel","Swarm","Estimation","Reinforment Learning","DRL","Exploration","Planning","Gradient","Terrain","Representation","Navigation","Multi-agent","Semantic","Scene Graph","Scene Graphs","Open-Vocabulary","Localization"];
let titles_platform = ["Robots","Robot","UAV","UAVs","UGV","UGVs"];
let titles_sensor = ["LiDAR", "Visual", "Vision", "Camera", "Inertial","Radar","Multi-modal","Event Camera"];
let titles = titles_method + titles_type + titles_sensor + titles_platform;
let authors_array = ["Davide Scaramuzza","Vijay Kumar","Luca Carlone","Wolfram Burgard","Cyrill Stachniss","Howie Choset","Ji Zhang","Nicholas Roy","Frank Dellaert","Fei Gao","Maurice Fallon","Roland Siegwart","Brendan Englot","Shaojie Shen","Jonathan P. How","Fu Zhang","John Owens","Guoquan Huang","Xieyuanli Chen","Lihua Xie","Peng Yin","Robert Babuska","Javier Alonso-Mora","Patric Jensfelt","Paul Newman","Marco Hutter","Marc Pollefeys","Sergey Levine","Andrew Davidson","Jonathan Gammell","Timothy D Barfoot","Paul Newman","Michael Milford","Margarita Chli","Sebestian Scherer","Johannes Bets","Yann LeCun","Kostas Alexis","Martin Magnusson","Raquel Urtasun","Timothy Barfoot","Ayoung Kim","Angela Schoellig","Francois Pomerleau","Chen Wang","Fan Shi","Yunlong Song","Marjia Popovic","Abhinav Valada","Peyman Moghadam"];

let conferences = [
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // Robotics
    "ICRA", "IROS", "RSS"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;