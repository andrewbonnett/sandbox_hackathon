import 'ProjectPost.dart';

class ProjectData {
  List<ProjectPost> getProjectData() {
    return projectList;
  }

  List<ProjectPost> projectList = <ProjectPost>[
    ProjectPost(
      'images/facebook.png',
      'Facebook',
      'Videography Competition',
      'Make a video that promotes humanitarian work.',
      '',
      '',
    ),
    ProjectPost(
      'images/nike.png',
      'Nike',
      'Product Design Competition',
      'Design a running shoe for Nike that implements the Oregon Duck colors.',
      'Every year Nike creates new cleats for the Oregon Ducks football team. This year we are letting that design be created by students like you. Use your creativity to design cleats that incorporate the green and yellow colors of the team. The sky is the limit in terms of ways to design them. We are judging on design not the comfort of the cleat (that part is up to us). Submit your design mockups as PDF file.\n\nHelpful Information:\nHex color: #FBE021\nHex color: #004F39',
      'Submission deadline is April 30, 2021 at 11:59 PST.',
    ),
    ProjectPost(
      'images/nintendo.png',
      'Nintendo',
      'Game Development Contest',
      'Use the Nintendo API to create your own version of Super Mario',
      'Fans of Nintendo have enjoyed Super Mario, Super Smash, Mario Kart in many iterations over many years. Bringing people together to have fun has been the goal from the start. In preparation for the 23rd anniversary of Super Smash, Nintendo is inviting fans to renew the game in whatever way they like with provided source code. Students with the most creative submissions that indicate passion for game development will be selected as candidates for next summers\'s internship in SWE.\n\nLink to source code: http://www.nintendo.com/smashcontest2021',
      'Submission deadline is October 1, 2021 at 11:59 PST.',
    ),
    ProjectPost(
      'images/bayer.png',
      'Bayer',
      'Biomedical Engineering',
      'Make a 60 second video explanation of Schrodinger\'s Cat',
      '',
      '',
    ),
    ProjectPost(
      'images/microsoft.png',
      'Microsoft',
      'Cloud Computing',
      'Write an algorithm. See full description for details.',
      '',
      '',
    ),
  ];
}
