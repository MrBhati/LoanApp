import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatefulWidget {
  PrivacyPolicy({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("PrivacyPolicy"),
            
             Image.asset(
                  'assets/images/logo.jpeg',
                  height: 60,
                ),
          ]
        ),
        flexibleSpace: Image(
          image: AssetImage('assets/images/new.jpeg'),
          fit: BoxFit.cover,
            
        ),
        backgroundColor: Colors.transparent,
      ),
       bottomNavigationBar: Container(
        
        height:100,
        
        width: double.infinity,
        decoration: BoxDecoration(
                       image: DecorationImage(
          image: AssetImage('assets/images/bottom.jpeg'),
          fit: BoxFit.fill,
        ),
       
        ),
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
      
      ),
      body: SafeArea(
        child: Container(
               padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: SingleChildScrollView(
            child: Column(
            children:[
          
          Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color:AppColors.primery_color,
                            fontSize: 18,
                          ),
                        ),
          
 SizedBox(height: 20,),
                        Text("Instant Fast Loan built the Instant Fast Loan app as a Free app. \n\nThis service is provided by Instant Fast Loan at no cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service. \n\nAs a user (User or You) of the Platform, You understand that Platform provides access between multiple Users in the form of consumers, financial institutions, data partners and other partners lenders, borrowers, service providers etc. with a view to facilitate lending and borrowing activities, including providing other financial products i.e. insurance products, credit cards etc. between the Users. \n\nIt is hereby clarified that the term Users shall mean any person using the Platform i.e. consumers, financial institutions, regulated entities, data partners and other partners. Your use of this Platform implies that You have read, understood and agreed to abide by following, disclaimer, terms & conditions (Terms & Conditions). \n\nThese Terms & Conditions read together with our privacy policy govern Your usage of the Platform and the terms for the purchase of the Products from the Platform (Product). \n\nIf You disagree with any part of these Terms & Conditions, please do not use the Platform. Please read these Terms & Conditions carefully before accessing or using our Platform. By accessing or using any part of the Platform, You agree to be bound by these Terms & Conditions. \n\nIf You do not agree to all the terms and conditions of this agreement, then You may not access the Platform or use any services provided by Us.",style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color:Colors.black45,
                            fontSize: 15,
                          ),
                        ),

          SizedBox(height: 20,),
                        Text("The App provides access to an online platform bringing together consumers, financial institutions, data partners and other partners willing to abide by the Terms & Conditions herein. Instant Fast Loan is merely a facilitator providing the Platform for any person in need of financial products. Instant Fast Loan provides various kind of personal loan products as specifically detailed under Clause 2 to its Users. Instant Fast Loan is merely facilitates a transaction between two such persons (i.e. Users). Instant Fast Loan is not an organization registered with the Reserve Bank of India and does not hold any license to engage in any activities relating to lending or borrowing. Instant Fast Loan is not a Financial Institution under the Companies Act, 2013 or the Banking Regulation Act, 1949 or any other laws for the time being in force in India. Instant Fast Loan is also not a deposit taking company or a chit fund or a company offering any investment schemes as per the rules and regulations for the time being in force in India. Instant Fast Loan is a service provider facilitating the access between financial institutes and non-banking finance companies willing to lend and person in need of borrowing. \n\nThe final decision as regards lending and borrowing is also subject to the choice of the respective Users in their respective capacities as lenders / borrowers / users of other financial products as set out in the Platform. Instant Fast Loan, through its Platform displays various products provided by its partners or third parties. \n\nIn addition to the foregoing, Instant Fast Loan also provides certain other services with respect to data analytics subject to these Terms & Conditions. \n\nIn the event You wish to avail any of the Products displayed on the Platform, You will be required to provide certain information and our representatives may contact You through phone or email to understand Your requirements. \n\nInstant Fast Loan provides various services, including but not limited to (Services): \n\n1. Facilitating purchase and sale of Product between the Users on its Platform; \n\n2. Assisting its customers to obtain a Product from various banks who are partnered with Instant Fast Loan; \n\n3. Assisting its Users to obtain their credit report through authorized agents partnered with Instant Fast Loan. Instant Fast Loan will monitor and update the credit report obtained by the customer through the use of the Platform as and when Instant Fast Loan receives such report from the authorized agents; \n\n4. Provision of support to the Users in verifying the financial capabilities of Users; \n\n5. Instant Fast Loan will also provide You with spend analysis which analyses Your income and expenses which is obtained by Instant Fast Loan by way of bank SMS scraping and through its integration with service provider. \n\n6. Provision of a social score based on User’s Facebook, Twitter, Linkedin or any other social media accounts that are linked with User’s account on the Platform. \n\n7. In the event You have registered Your phone number on the ‘Do Not Disturb’ registers with Your network provider, You shall ensure to take all steps to enable the Company’s representative’s to contact You via phone to provide details about different financial products and You shall ensure that such calls received by You are pursuant to You providing Us with information and You shall not register a compliant with the relevant authorities for the same. For the provision of the above mentioned Services, Instant Fast Loan will be using and sharing the information of the User with multiple financial institutions and other parties, as may be required for the purpose mentioned above and Instant Fast Loan shall also run multiple credit checks to be able to get the best available offers to suit the needs of the Users. The collection, storing, use and transfer of information shared by the User shall be governed in accordance with the Privacy Policy."
,                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color:Colors.black45,
                            fontSize: 15,
                          ),
                        ),
            ]
                  ),
          )
        )
      ),
    );
  }
}
