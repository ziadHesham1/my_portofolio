import 'package:equatable/equatable.dart';

import '../../common/portfolio_assets.dart';
import 'project_action_links.dart';
import 'project_model.dart';

class ProjectsModel extends Equatable {
  final List<ProjectModel> items;

  const ProjectsModel({required this.items});

  @override
  List<Object?> get props => [items];
  factory ProjectsModel.empty() {
    return const ProjectsModel(items: []);
  }

  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    List<ProjectModel> items = [];
    json.forEach((key, value) {
      items.add(ProjectModel.fromJson({'id': key, ...value}));
    });
    return ProjectsModel(items: items);
  }
  static final projects = ProjectsModel(
    items: [
      ProjectModel(
        id: '1',
        title: 'Portfolio Website',
        subTitle:
            'A personal portfolio website designed to showcase my skills, projects, and experiences as a Flutter developer.',
        projectType: ProjectType.website,
        actionLinks: const ProjectActionLinks(
          demoVideo: 'https://ziad-dev-e015d.web.app/',
          github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: [PortfolioAssets.portfolio_image],
        thumbnail: PortfolioAssets.portfolio_image,
      ),
      ProjectModel(
        // projectType: ProjectType.website,
        title: 'Ischooler Mobile App',
        subTitle:
            'A side project designed to provide a comprehensive platform for schools. Manages student data, weekly timetables, and homework assignments, and includes features for school updates and news. Aims to streamline school administration and enhance communication between the school and its community.',
        id: '2',
        actionLinks: const ProjectActionLinks(
          demoVideo:
              'https://drive.google.com/file/d/1rvDBa2mDqJi2VCV39nNnmpkflEKflcCy/view?usp=sharing',
        ),
        images: PortfolioAssets.ischooler_images,
        thumbnail: PortfolioAssets.ischooler_thumbnail,
      ),
      ProjectModel(
        // projectType: ProjectType.website,
        id: '3',
        title: 'Mawjood Mobile App',
        subTitle:
            "A local e-commerce app in Egypt that offers a wide range of products and restaurant services. Includes features like user authentication, real-time updates, detailed product and restaurant listings, and efficient order management to enhance the shopping experience. Developed while working at UniDevs.",
        actionLinks: const ProjectActionLinks(
          demoVideo:
              'https://drive.google.com/file/d/19hF22AbSK1bwyM-RI8IQIpNDs1U-k-LO/view?usp=sharing',
          // github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: PortfolioAssets.mawjood_images,
        thumbnail: PortfolioAssets.mawjood_thumbnail,
      ),
      ProjectModel(
        id: '4',
        title: 'Eduz Mobile App',
        subTitle:
            'An educational e-commerce app offering a range of school and education-related products and services. Features include user authentication, real-time updates, comprehensive product listings, and efficient order management. Designed to streamline access to educational resources. Developed as a freelance project.',
        actionLinks: const ProjectActionLinks(
            // demoVideo:
            // 'https://drive.google.com/file/d/1PwdIMuYNk75z5dsb68wQf7Y8ak_DHyaQ/view?usp=drive_link',
            // github: 'https://github.com/ziadHesham1/my_portofolio',
            ),
        images: PortfolioAssets.eduz_images,
        thumbnail: PortfolioAssets.eduz_thumbnail,
      ),
      ProjectModel(
        id: '5',
        title: 'SpaceTeens Mobile App',
        subTitle:
            'A mobile application designed as a platform for Spaceteens Robotics Academy designed for kids, offering features such as academy news, student data and progress tracking, and communication tools for students, teachers, and parents. Facilitates engagement and keeps all stakeholders informed and connected. Developed as a freelance project.',
        actionLinks: const ProjectActionLinks(
          demoVideo:
              'https://drive.google.com/file/d/1PwdIMuYNk75z5dsb68wQf7Y8ak_DHyaQ/view?usp=drive_link',
          // github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: PortfolioAssets.spaceteens_images,
        thumbnail: PortfolioAssets.spaceteens_thumbnail,
      ),
    ],
  );
}
