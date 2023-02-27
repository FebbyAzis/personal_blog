import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_blog/app/utils/style/global.colors.dart';
import 'package:personal_blog/app/utils/widget/sideBar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
               SizedBox(height: 20,),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset('assets/images/profil.jpg',
                height: 200,
                ),
              ),
              SizedBox(height: 20,),
              Text('Febby Azis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),),
               Text('UI & UX Designer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),),
              
              SizedBox(height: 10,),
              ListTile(
                subtitle: Text('I am a student studying Information Systems at Catur Insan Cendekia University, Cirebon, who is interested in seeking opportunities to add to my insights and knowledge. I am a tenacious person, able to work with a team, and full of enthusiasm. I have an interest in analyzing and seeking new information or knowledge and love new things and experiences.',
                textAlign: TextAlign.center,),
              ),
              SizedBox(height: 20,),
              Divider(),

               SizedBox(height: 10,),
               ListTile(
                title: Text('Personal Data',style: TextStyle(fontWeight: FontWeight.bold)),
               ),

               Container(
                alignment: Alignment.center,
            child: Table( 
                      defaultColumnWidth: FixedColumnWidth(150.0),  
                      border: TableBorder.all(  
                          color: Colors.black,  
                          style: BorderStyle.solid,  
                          width: 1),  
                      children: [ 
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Full name'),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('Febby Azis'),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Place, Date of Birth'),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('Cirebon, 07 February 2002',textAlign: TextAlign.center,),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Address'),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('Ciperna City Park Housing, G1 No 4, Cirebon Regency',textAlign: TextAlign.center,),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Age'),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('21 Years'),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Status'),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('Student'),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Campus'),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('University of Catur Insan Cendekia',textAlign: TextAlign.center,),SizedBox(height: 10),]),  
                        ]),  
                          ],
                        )
                        
                      ),
               
               SizedBox(height: 20,),
              Divider(),

               SizedBox(height: 10,),
               ListTile(
                title: Text('Skills'
                ,style: TextStyle(fontWeight: FontWeight.bold)),
               ),

               Container(
                alignment: Alignment.center,
            child: Table( 
                      defaultColumnWidth: FixedColumnWidth(150.0),  
                      border: TableBorder.all(  
                          color: Colors.black,  
                          style: BorderStyle.solid,  
                          width: 1),  
                      children: [ 
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Soft Skills',style: TextStyle(fontWeight: FontWeight.bold),),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('Hard Skills',style: TextStyle(fontWeight: FontWeight.bold)),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Analyze data and information accurately',textAlign: TextAlign.center),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('Mastering Enterprise Architecture Tools, Trello, Figma, Miro, Odoo',textAlign: TextAlign.center,),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Time management leadership and team collaboration',textAlign: TextAlign.center),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text('Mastering Ms. Word, Excel, PowerPoint',textAlign: TextAlign.center,),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Thorough in doing the task',textAlign: TextAlign.center),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text(''),SizedBox(height: 10),]),  
                        ]),  
                        TableRow( 
                          children: [  
                          Column(children:[SizedBox(height: 10),Text('Think critically'),SizedBox(height: 10),]),  
                          Column(children:[SizedBox(height: 10),Text(''),SizedBox(height: 10),]),  
                        ]),  
                        
                          ],
                        )
                        
                      ),

              //  Text('Full name: Febby Azis',textAlign: TextAlign.left,),
              //  Text('Place, Date of Birth : Cirebon, 07 February 2002', textAlign: TextAlign.left),
              //  Text('Address : Ciperna City Park Housing, G1 No 4, Cirebon Regency', textAlign: TextAlign.left),
              //  Text('Age : 21', textAlign: TextAlign.left),
              //  Text('Religion : Islam', textAlign: TextAlign.left),
              //  Text('Status : Student', textAlign: TextAlign.left),
              //  Text('Campus : University of Chess Human Scholar', textAlign: TextAlign.left),
            ],
          ),
        ),
      ),
      drawer: SideBar(),
    );
  }
}
