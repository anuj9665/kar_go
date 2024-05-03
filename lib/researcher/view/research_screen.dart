import 'package:flutter/material.dart';
import 'package:kar_go/researcher/model/research.dart';
import 'package:kar_go/researcher/view/webview_screen.dart';

class ResearchScreen extends StatefulWidget {
  const ResearchScreen({super.key});

  @override
  State<ResearchScreen> createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  final List<Research> researchData = [
    Research(
        title:
            "Reach-to-grasp interjoint coordination for moving object in children with hemiplegia",
        subtitle: "PMID: 19841831",
        url: "https://pubmed.ncbi.nlm.nih.gov/19841831/"),
    Research(
        title:
            "Development of hand rehabilitation system for paralysis patient - universal design using wire-driven mechanism",
        subtitle: "PMID: 19963950",
        url: "https://pubmed.ncbi.nlm.nih.gov/19963950/"),
    Research(
        title:
            "Feasibility and efficacy of a robotic device for hand rehabilitation in hemiplegic stroke patients: a randomized pilot controlled study",
        subtitle: "PMID: 27056250",
        url: "https://pubmed.ncbi.nlm.nih.gov/27056250/"),
    Research(
        title: "Development and assessment of a hand assist device: GRIPIT",
        subtitle: "PMID: 28222759",
        url: "https://pubmed.ncbi.nlm.nih.gov/28222759/"),
    Research(
        title:
            "Efficacy of Short-Term Robot-Assisted Rehabilitation in Patients With Hand Paralysis After Stroke: A Randomized Clinical Trial",
        subtitle: "PMID: 28719996",
        url: "https://pubmed.ncbi.nlm.nih.gov/28719996/"),
    Research(
        title:
            "An IoT-Enabled Stroke Rehabilitation System Based on Smart Wearable Armband and Machine Learning",
        subtitle: "PMID: 29805919",
        url: "https://pubmed.ncbi.nlm.nih.gov/29805919/"),
    Research(
        title:
            "Feasibility and safety of shared EEG/EOG and vision-guided autonomous whole-arm exoskeleton control to perform activities of daily living",
        subtitle: "PMID: 30018334",
        url: "https://pubmed.ncbi.nlm.nih.gov/30018334/"),
    Research(
        title:
            "User-Driven Functional Movement Training With a Wearable Hand Robot After Stroke",
        subtitle: "PMID: 32886611",
        url: "https://pubmed.ncbi.nlm.nih.gov/32886611/"),
    Research(
        title:
            "HandMATE: Wearable Robotic Hand Exoskeleton and Integrated Android App for At Home Stroke Rehabilitation",
        subtitle: "PMID: 33019080",
        url: "https://pubmed.ncbi.nlm.nih.gov/33019080/"),
    Research(
        title:
            "Effects of a Soft Robotic Hand for Hand Rehabilitation in Chronic Stroke Survivors",
        subtitle: "PMID: 33895427",
        url: "https://pubmed.ncbi.nlm.nih.gov/33895427/"),
    Research(
        title:
            "Occupational therapists' evaluation of the perceived usability and utility of wearable soft robotic exoskeleton gloves for hand function rehabilitation following a stroke",
        subtitle: "PMID: 34190657",
        url: "https://pubmed.ncbi.nlm.nih.gov/34190657/"),
    Research(
        title:
            "A Review of Hand Function Rehabilitation Systems Based on Hand Motion Recognition Devices and Artificial Intelligence",
        subtitle: "PMID: 36009142",
        url: "https://pubmed.ncbi.nlm.nih.gov/36009142/"),
    Research(
        title:
            "Elastic Dynamic Sling on Subluxation of Hemiplegic Shoulder in Patients with Subacute Stroke: A Multicenter Randomized Controlled Trial",
        subtitle: "PMID:36011613",
        url: "https://pubmed.ncbi.nlm.nih.gov/36011613/"),
    Research(
        title:
            "Investigation of therapeutic effects of wearable robotic gloves on improving hand function in stroke patients: A systematic review",
        subtitle: "PMID: 38011474",
        url: "https://pubmed.ncbi.nlm.nih.gov/38011474/")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Research Articles"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(researchData.length, (index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(researchData[index].subtitle),
                    subtitle: Text(researchData[index].title),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewScreen(
                            url: researchData[index].url,
                            title: researchData[index].subtitle,
                          ),
                        ),
                      );
                    },
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
