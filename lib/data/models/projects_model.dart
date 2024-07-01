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
        projectType: ProjectType.website,
        actionLinks: const ProjectActionLinks(
          demoVideo: 'https://ziad-dev-e015d.web.app/',
          github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: [PortfolioAssets.portfolio_image],
        thumbnail: PortfolioAssets.portfolio_image,
        subTitle:
            'A personal portfolio website designed to showcase my skills, projects, and experiences as a Flutter developer.',
        title: 'Portfolio Website',
      ),
      ProjectModel(
        // projectType: ProjectType.website,
        id: '2',
        actionLinks: const ProjectActionLinks(
          demoVideo:
              'https://drive.google.com/file/d/1rvDBa2mDqJi2VCV39nNnmpkflEKflcCy/view?usp=sharing',
          // github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: PortfolioAssets.ischooler_images,
        thumbnail: PortfolioAssets.ischooler_thumbnail,
        subTitle:
            'A personal portfolio website designed to showcase my skills, projects, and experiences as a Flutter developer.',
        title: 'Ischooler Mobile App',
      ),
      ProjectModel(
        // projectType: ProjectType.website,
        id: '3',
        actionLinks: const ProjectActionLinks(
          demoVideo:
              'https://drive.google.com/file/d/1rvDBa2mDqJi2VCV39nNnmpkflEKflcCy/view?usp=sharing',
          // github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: PortfolioAssets.mawjood_images,
        thumbnail: PortfolioAssets.mawjood_thumbnail,
        subTitle:
            'A personal portfolio website designed to showcase my skills, projects, and experiences as a Flutter developer.',
        title: 'Mawjood Mobile App',
      ),
      ProjectModel(
        id: '4',
        actionLinks: const ProjectActionLinks(
          demoVideo:
              'https://drive.google.com/file/d/1PwdIMuYNk75z5dsb68wQf7Y8ak_DHyaQ/view?usp=drive_link',
          // github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: PortfolioAssets.eduz_images,
        thumbnail: PortfolioAssets.eduz_thumbnail,
        subTitle:
            'A personal portfolio website designed to showcase my skills, projects, and experiences as a Flutter developer.',
        title: 'Eduz Mobile App',
      ),
      ProjectModel(
        id: '5',
        actionLinks: const ProjectActionLinks(
          demoVideo:
              'https://drive.google.com/file/d/1PwdIMuYNk75z5dsb68wQf7Y8ak_DHyaQ/view?usp=drive_link',
          // github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: PortfolioAssets.spaceteens_images,
        thumbnail: PortfolioAssets.spaceteens_thumbnail,
        subTitle:
            'A personal portfolio website designed to showcase my skills, projects, and experiences as a Flutter developer.',
        title: 'SpaceTeens Mobile App',
      ),
    ],
  );
}
