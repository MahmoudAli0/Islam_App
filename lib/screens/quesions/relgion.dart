import 'package:flutter/material.dart';
import 'package:sb7a/screens/quesions/answers.dart';

class Relgion_Screen extends StatelessWidget {

  List<String> relgionQuesions = [
    'على أي شيء يطلق اسم الأخشبان؟',
    'من هم المغضوب عليهم؟ ولماذ؟',
    'من هم الضالين؟ ولماذ؟',
    'لماذا خلق الله النجوم؟',
    'على من يطلق المصدود؟',
    'من النبي الذي كان يسمى بشرى؟',
    'من الذي عدلت شهادته شهادة الرجلين؟',
    'من آخر من توفى من الصحابة؟',
    'كم عدة المرأة المطلقة؟',
    'ما اسم خازن الجنة؟',
    'ما اسم خازن النار؟',
    'ليلة الإسراء إمتطى النبي محمد صلى الله عليه وسلم دابة مجنحة، ما أسمه؟',
    'ما هو عدد مرات التي ورد فيها ذكر النار في المصحف الشريف؟',
    'عشرة من المسلمين بشروا بالجنة من كان آخر من مات منهم؟',
    'ماهي العملة الإسلامية الأولى؟',
    'في أي من أيام الأسبوع خلق الله آدم (عليه السلام )؟',
    'من هم الثلاثة الذين تشتاق الجنة إليهم؟',
    'يوم ترجف الراجفة.. ما المقصود بالراجفة؟',
    'تتبعها الرادفة ما المقصود بالرادفة؟',
    'ما الفرق بين سندس وإستبرق؟',
    'ما أطول كلمة في وردت القرآن الكريم ؟',
    'كم سجدة يتضمنها القرآن الكريم؟',
    'ما هو اسم زوجة فرعون؟',
    'صحابي من الصحابة لقب بساعي الرسول صلى الله عليه وسلم؟',
    'كم عدد مذاهب المسلمين؟',
    'من أول من دول علم أصول الفقه؟',
    'من هو أول الأئمة الأربعة ؟',
    'من أول من سل سيف في سبيل الله ؟',
    'ما هما الجبلين اللذين ذكر أسماؤهما في القرآن الكريم في آية واحدة؟',
    'من هو الذي لقب بذي الشهادتين؟',
    'ما عدد تكبيرات الركعة الأولى من صلاة العيد عند الشافعية؟',
    'ما المكان الذي اتخذه الرسول صلى الله عليه سلم مركزًا سريًا للدعوة في مكة المكرمة؟',
    'من هو أكبر أعمام النبي صلى الله عليه وسلم؟',
    'ما هو اسم أبو جهل ؟',
    'ما هو تعريف الإيمان بالقدر ؟',
    'من الذي عدلت شهادته شهادة الرجلين ؟',
    'على ماذا يطلق لفظ صلاة البردين ؟',

  ];
  List<String> relgionAnswers = [
    'اسم لجبلين بمكة.',
    'اليهود، لأنهم علموا الحق فتركوه وحادوا عنه على علم فاستحقوا غضب الله.',
    'النصارى لأنهم حادوا عن الحق جهلاً فكانوا على ضلال بين في شأن عيسى عليه السلام.',
    '	خلقها لثلاث: زينة للسماء، ورجوماً للشياطين وعلامات يهتدى بها في البر والبحر.',
    'الذي يمنع من الحج.',
    '	ذا الكفل.',
    '	خزيمة بن ثابت رضي الله عنه.',
    '	أنس بن مالك.',
    '	ثلاث قروء أي ثلاث حيضات.',
    'رضوان.',
    'مالك.',
    'البراق.',
    '126مرة.',
    'سعد بن أبي وقاص.',
    'الدينار الذهبي.',
    'يوم الجمعة.',
    'علي بن ابي طالب. عمار بن ياسر ـ سلمان الفارسي رضي الله عنهم.',
    '	النفخة الأولى التي يموت بها جميع الخلائق.',
    'النفخة الثانية التي يكون عندها البعث.',
    'السندس: رقيق الديباج أو الحرير.. الإستبرق: الغليظ من الديباج أو الحرير.',
    'كلمة “فَأَسْقَيْنَاكُمُوهُ”، وقيل أنها “فَسَيَكْفِيكَهُمُ”.',
    'ثلاثة عشر سجدة.',
    'اسمها اسيا عليها السلام وكانت مؤمنة بالله تعالى.',
    'هو الصحابي عمرو بن أمية الضمري رضي الله عنه وأرضاه.',
    'أربعة مذاهب',
    'الشافعي',
    'أبو حنيفة',
    '	الزبير بن العوام رضي الله عنه',
    'الصفا والمروة.',
    'خزيمة بن ثابت الأنصاري رضي الله عنه.',
    'سبعة تكبيرات دون تكبيرة الإحرام قبل قراءة القرآن',
    'دار الأرقم بن أبي الأرقم .',
    'الحارث بن عبد المطلب.',
    'عمرو بن هشام بن المغيرة المخزومي.',
    'أن تؤمن بأن ما أصابك لم يكن ليخطئك وما أخطأك لم يكن ليصيبك.',
    'خزيمة بن ثابت رضي الله عنه.',
    'صلاة الفجر والعصر.',
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: .3,
          title: Text('اسئلة دينية ',textAlign: TextAlign.center,),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(onPressed:(){},icon:Icon(Icons.menu) ),
            ),
          ],
        ),
        body: GridView.count(
          crossAxisCount: 1,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          childAspectRatio: 1 / 0.5,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(relgionQuesions.length,
                  (index) => GestureDetector(child: buildRelgoinListItem(index,context))),
        ));
  }

  Widget buildRelgoinListItem(index,context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${relgionQuesions[index]} ',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AnswersScreen(questionRa: relgionQuesions,answersRa: relgionAnswers,index: index,screen: Relgion_Screen(),) ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                        child: Text('الاجابة ')
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
