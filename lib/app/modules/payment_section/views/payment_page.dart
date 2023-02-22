import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/custom_card_type_icon.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/theme/colors.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                context.go('/patientDetails');
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: AppColors.primary,
                size: 29,
              )),
          title: Text(
            'Payment',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 28,
            ),
          ),
          actions: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.primary100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add_rounded,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            )
          ],
        ),
        body: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SafeArea(
                child: Column(children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              CreditCardWidget(
                glassmorphismConfig:
                    useGlassMorphism ? Glassmorphism.defaultConfig() : null,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                bankName: 'Access Bank',
                frontCardBorder:
                    !useGlassMorphism ? Border.all(color: Colors.grey) : null,
                backCardBorder:
                    !useGlassMorphism ? Border.all(color: Colors.grey) : null,
                showBackView: isCvvFocused,
                obscureCardNumber: true,
                obscureCardCvv: true,
                isHolderNameVisible: true,
                cardBgColor: AppColors.primary,
                backgroundImage: useBackgroundImage
                    ? 'assets/images/card_background.jpg'
                    : null,
                isSwipeGestureEnabled: true,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                customCardTypeIcons: <CustomCardTypeIcon>[
                  CustomCardTypeIcon(
                    cardType: CardType.mastercard,
                    cardImage: Image.asset(
                      'assets/images/mastercard.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                CreditCardForm(
                  formKey: formKey,
                  obscureCvv: true,
                  obscureNumber: true,
                  cardNumber: cardNumber,
                  cvvCode: cvvCode,
                  isHolderNameVisible: true,
                  isCardNumberVisible: true,
                  isExpiryDateVisible: true,
                  cardHolderName: cardHolderName,
                  expiryDate: expiryDate,
                  themeColor: Colors.blue,
                  textColor: Colors.black,
                  cardNumberDecoration: InputDecoration(
                    labelText: 'Number',
                    hintText: 'XXXX XXXX XXXX XXXX',
                    hintStyle: const TextStyle(color: Colors.black),
                    labelStyle: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  expiryDateDecoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    labelStyle: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    focusedBorder: border,
                    enabledBorder: border,
                    labelText: 'Expired Date',
                    hintText: 'XX/XX',
                  ),
                  cvvCodeDecoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    labelStyle: GoogleFonts.roboto(
                        color: Colors.black, fontWeight: FontWeight.w700),
                    focusedBorder: border,
                    enabledBorder: border,
                    labelText: 'CVV',
                    hintText: 'XXX',
                  ),
                  cardHolderDecoration: InputDecoration(
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    labelStyle: GoogleFonts.roboto(
                        color: Colors.black, fontWeight: FontWeight.w700),
                    focusedBorder: border,
                    enabledBorder: border,
                    labelText: 'Full Name',
                  ),
                  onCreditCardModelChange: onCreditCardModelChange,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Card Image',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      Switch(
                        value: useBackgroundImage,
                        inactiveTrackColor: Colors.grey,
                        activeColor: Colors.white,
                        activeTrackColor: AppColors.primary,
                        onChanged: (bool value) => setState(() {
                          useBackgroundImage = value;
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    _onValidate;
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // Build the dialogue box content
                        return Center(
                          child: Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width * 0.84,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                LottieBuilder.asset(
                                  'assets/animation/messages.json',
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Successful',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: AppColors.primary),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Your appointment was booked successfully',
                                      style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Dr.Jenny Wilson will message you',
                                      style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'soon.',
                                      style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: 45,
                                  width:
                                      MediaQuery.of(context).size.width * 0.74,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context.go("/appointment1");
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50))),
                                    child: Text(
                                      'Ok',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: <Color>[
                          AppColors.primary,
                          AppColors.white,
                        ],
                        begin: Alignment(-1, -4),
                        end: Alignment(5, 2),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Pay Now',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ])))
            ]))));
  }

  void _onValidate() {
    if (formKey.currentState!.validate()) {
      print('valid!');
    } else {
      print('invalid!');
    }
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
