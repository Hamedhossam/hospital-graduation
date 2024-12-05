import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/models/news_model.dart';
import 'package:hospital/models/section_model.dart';
import 'package:hospital/screens/clinics_screen.dart';
import 'package:hospital/screens/news_screen.dart';
import 'package:hospital/widgets/news_widget.dart';
import 'package:hospital/widgets/section_widget.dart';

class HomeScreenView extends StatelessWidget {
  HomeScreenView({super.key});
  final List<NewsModel> newsList = [
    NewsModel(
      image: "https://img.youm7.com/large/202112070642584258.jpg",
      tittle:
          'تقديم خدمات علاجية مجانا لـ350 مواطنا بعيادات العظام بـ"مستشفى طنطا التعليمى"',
      subtittle:
          'وأكد الدكتور محمود ذكى حرص جامعة طنطا وإدارة المستشفيات الجامعية على صحة المرضى والارتقاء بالمنظومة الصحية والعلاجية للتخفيف عن كاهل المرضى وتعظيم الاستفادة من إمكانيات المستشفي وخبرة أساتذة كلية الطب في شتي التخصصات الطبية. وأوضح الدكتور أحمد غنيم عميد كلية الطب ورئيس مجلس إدارة المستشفيات الجامعية، جاهزية المستشفى التعليمى لتقديم خدمة طبية متميزة للمرضى من أهالي الغربية والمحافظات المجاورة، وأكد عميد كلية الطب توجه الجامعة فى بناء مستشفيات جديدة ودعمها بالأجهزة الطبية الحديثة والتكنولوجيا المتطورة بما يساهم فى تقديم خدمات علاجية متميزة لجميع المرضى . من جانبه، أوضح الدكتور محمود سليم مدير المستشفى التعليمى العالمى، أن العيادات الخارجية شهدت إقبالا كبيرًا من المرضى، حيث تم توقيع الكشف وتقديم كافة الخدمات العلاجية لأكثر من 350 مريض فى كافة تخصصات العظام، وأضاف د. سليم مشاركة نخبة من أساتذة العظام بكلية الطب بالجامعة فى تخصصات: جراحة عظام الأطفال، جراحة المناظير وإصابات الملاعب ، جراحة المفاصل الصناعية ، جراحة اليد والجراحات الميكروسكوبية ، وجراحة العمود الفقري.',
      date: '24/11/2024 18:22 PM',
    ),
    NewsModel(
      image:
          "https://watanimg.elwatannews.com/image_archive/original_lower_quality/16701699301681131520.jpg",
      tittle:
          "خلال جولتهم بجامعة طنطا: وزير التعليم العالي ومحافظ الغربية ورئيس جامعة طنطا يفتتحون عددًا من المشروعات الطبية بالجامعة",
      subtittle:
          'افتتح د. أيمن عاشور وزير التعليم العالي والبحث العلمي عددًا من المنشآت الطبية بجامعة طنطا، بحضور د. طارق رحمي محافظ الغربية، ود. محمود ذكي رئيس الجامعة، وعدد من قيادات جامعة طنطا، والقيادات التنفيذية والشعبية بمحافظة الغربية. وفي إطار زيارته للجامعة، أشاد الوزير بالافتتاحات الجديدة بجامعة طنطا، والتي تأتي في إطار خطة الجامعة للتطوير والتوسع المستمر، وما تمثله من نقلة نوعية في الخدمات التعليمية والبحثية والطبية، بالإضافة للمشاركة المجتمعية في تقديم خدمات صحية للمواطنين من خلال المستشفيات الجامعية التي تقوم بدور مهم في علاج لملايين المواطنين المصريين، فضلاً عن دورها الأكاديمي والتدريبي والبحثي، مشيرًا إلى أن المستشفيات الجامعية تشهد إقبالًا كبيرًا عليها بشكل مستمر، نظرًا لتميز الخدمات الصحية التي تقدمها للمُترددين عليها. شملت زيارة الوزير افتتاح مستشفى الجراحات الجامعي، بتكلفة إجمالية تصل إلى 635 مليون جنيه، ويعد هذا المشروع جزء من المرحلة الأولى للمخطط العام لتطوير مستشفى الجامعة القديمة التي تم بناؤها عام 1935 تقريبًا بارتفاع دورين فقط، وتم إضافة أجزاء للمستشفى مع تعديل بعض الأجزاء الأخرى وذلك لاستيعاب الزيادة المفرطة لأعداد المرضى، ويضم المستشفى: ( العيادات الخارجية -21 قاعة تدريس - 18 غرفة عمليات - عناية مركزة – معامل - صيدلية - أشعة - المناظير الجراحية - أقسام المرضى الداخلي).',
      date: "5/21/2023 12:55 PM",
    ),
    NewsModel(
      image: "https://img.youm7.com/large/12201561221614487.jpg",
      tittle: "مستشفى طنطا التعليمى يستقبل 12 ألف مريض بعياداته الخارجية",
      subtittle:
          "أكد الدكتور محمود ذكى رئيس جامعة طنطا، فى بيان له، على مواصلة مستشفيات جامعة طنطا تقديم خدماتها العلاجية لجميع المرضى المترددين عليها من محافظات الدلتا بدعم ورعاية الدكتور أحمد غنيم عميد طب طنطا ورئيس مجلس إدارة المستشفيات، والدكتور حسن التطاوى المدير التنفيذى للمستشفيات.",
      date: "5/21/2023 12:55 PM",
    ),
    NewsModel(
      image:
          "https://daralmaref.com/Media/News/2024/5/27/2024-638524056369765944-976.JPG",
      tittle: "وفد هيئة الاعتماد والرقابة الصحية يتفقد مستشفيات جامعة طنطا",
      subtittle:
          'وقعت اليوم الهيئة العامة للاعتماد والرقابة الصحية برئاسة الدكتور أحمد طه، بروتوكول تعاون مشترك مع جامعة طنطا برئاسة الدكتور محمود ذكى لمنح شهادة "جهار- ايجيكاب"، وذلك بمقر الجامعة بطنطا.',
      date: "5/21/2023 12:55 PM",
    )
  ];
  final List<SectionModel> sectionsList = [
    SectionModel(
      name: "القلب",
      icon: 'assets/icons/heart.png', // Replace with actual icon path
    ),
    SectionModel(
      name: "الصدر",
      icon: 'assets/icons/chest.png', // Replace with actual icon path
    ),
    SectionModel(
      name: "الأسنان",
      icon: 'assets/icons/teeth.png', // Replace with actual icon path
    ),
    SectionModel(
      name: "الجلدية",
      icon: 'assets/icons/skin.png', // Replace with actual icon path
    ),
    SectionModel(
      name: "الأنف والأذن",
      icon: 'assets/icons/nose_ear.png', // Replace with actual icon path
    ),
    SectionModel(
      name: "الجراحة العامة",
      icon: 'assets/icons/surgery.png', // Replace with actual icon path
    ),
    SectionModel(
      name: "العصبية",
      icon: 'assets/icons/neurology.png', // Replace with actual icon path
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ClinicsScreen(
                      sectionsList: sectionsList,
                    );
                  }));
                },
                child: Text(
                  "عرض الكــل",
                  style: normalStyle,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                "العيـادات الصحــية",
                style: labelStyle,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 6.5,
              width: double.maxFinite,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return SectionWidget(
                      sectionModel: sectionsList[index],
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewsScreen(
                      newsList: newsList,
                    );
                  }));
                },
                child: Text(
                  "المزيد",
                  style: normalStyle,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                "اخر الأخبــار",
                style: labelStyle,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 1.92,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: newsList.length,
                itemBuilder: (context, index) {
                  return NewsWidget(
                    newsModel: newsList[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
