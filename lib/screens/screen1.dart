import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 16, right: 16),
          child: heroCard(),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              secHeroCard1(
                const Icon(
                  FluentIcons.sim_24_regular,
                  size: 28,
                  color: Color(0xffE30613),
                ),
                'GH 4.32',
                'Your airtime balance',
              ),
              const SizedBox(width: 28),
              secHeroCard2(
                const Icon(
                  FluentIcons.receipt_24_regular,
                  size: 28,
                  color: Color(0xffE30613),
                ),
                'Pay Bill',
                'Make payments for your postpaid services',
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Manage',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Color.fromARGB(171, 236, 236, 236),
                  blurRadius: 16,
                  blurStyle: BlurStyle.normal,
                ),
              ],
            ),
            child: Column(
              children: [
                buildListTile(
                  ltIcon: const Icon(
                    FluentIcons.add_circle_24_filled,
                    color: Color(0xff9F9D9B),
                  ),
                  ltTitle: 'Top up airtime or data',
                  ltSubTitle: 'Recharge airtime or data to this your phone',
                ),
                const Divider(
                  color: Color(0xffF8F8F8),
                ),
                buildListTile(
                  ltIcon: const Icon(
                    FluentIcons.phone_24_filled,
                    color: Color(0xff9F9D9B),
                  ),
                  ltTitle: 'My Subscriptions',
                  ltSubTitle: 'Manage all your subscriptions',
                ),
                const Divider(
                  color: Color(0xffF8F8F8),
                ),
                buildListTile(
                  ltIcon: const Icon(
                    FluentIcons.star_28_filled,
                    color: Color(0xff9F9D9B),
                  ),
                  ltTitle: 'Value-added Services',
                  ltSubTitle: 'Manage all your subscriptions',
                ),
                const Divider(
                  color: Color(0xffF8F8F8),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildListTile({
    required Widget ltIcon,
    required String ltTitle,
    required String ltSubTitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xffF6F6F4),
          radius: 25,
          child: ltIcon,
        ),
        title: Text(
          ltTitle,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
        subtitle: Text(
          ltSubTitle,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff808080),
          ),
        ),
        trailing: const Icon(
          FluentIcons.chevron_right_24_regular,
          size: 28,
          color: Color(
            0xff3A4051,
          ),
        ),
      ),
    );
  }

  Widget secHeroCard1(Widget scIcon, String scTitle, String scSubTitle) {
    return Container(
      height: 150,
      width: 210,
      decoration: BoxDecoration(
        color: const Color(0xffFBFBFB),
        border: Border.all(
          width: 1,
          color: const Color(0xffF6F6F6),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          left: 12,
          right: 12,
          bottom: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            scIcon,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  scSubTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff808080),
                  ),
                ),
                Text(
                  scTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget secHeroCard2(Widget scIcon, String scTitle, String scSubTitle) {
    return Container(
      height: 150,
      width: 210,
      decoration: BoxDecoration(
        color: const Color(0xffFBFBFB),
        border: Border.all(
          width: 1,
          color: const Color(0xffF6F6F6),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          left: 12,
          right: 12,
          bottom: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            scIcon,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  scTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  scSubTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff808080),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget heroCard() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      width: double.infinity,
      height: 145,
      decoration: BoxDecoration(
        color: const Color(0xffFBFBFB),
        border: Border.all(
          color: const Color(0xffF4F4F4),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            FluentIcons.live_24_filled,
            color: Color(0xffE30613),
            size: 32,
          ),
          LinearProgressIndicator(
            minHeight: 8,
            backgroundColor: Colors.grey[300],
            borderRadius: BorderRadius.circular(4),
            value: 0.35,
            color: const Color(0xffE30613),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your data',
                style: TextStyle(
                  color: Color(0xff808080),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '20.34',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        'GB left',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'of',
                        style: TextStyle(
                          color: Color(0xff808080),
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        '300',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff808080),
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        'GB',
                        style: TextStyle(
                          color: Color(0xff808080),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
