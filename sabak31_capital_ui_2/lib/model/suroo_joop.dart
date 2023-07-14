class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({required this.text, required this.tuuraJoop});
  final String text;
  final bool tuuraJoop;
}

const Suroo s1 = Suroo(
  text: 'Paris',
  image: 'paris',
  jooptor: [
    Joop(text: 'Germany', tuuraJoop: false),
    Joop(text: 'Finland', tuuraJoop: false),
    Joop(text: 'France', tuuraJoop: true),
    Joop(text: 'Italia', tuuraJoop: false)
  ],
);

const Suroo s2 = Suroo(
  text: 'London',
  image: 'london',
  jooptor: [
    Joop(text: 'Spain', tuuraJoop: false),
    Joop(text: 'Great Britain', tuuraJoop: true),
    Joop(text: 'France', tuuraJoop: false),
    Joop(text: 'Russia', tuuraJoop: false)
  ],
);
const Suroo s3 = Suroo(
  text: 'Brusel',
  image: 'brusel',
  jooptor: [
    Joop(text: 'MAkedonia', tuuraJoop: false),
    Joop(text: 'Portugal', tuuraJoop: false),
    Joop(text: 'Albania', tuuraJoop: false),
    Joop(text: 'Belgium', tuuraJoop: true)
  ],
);

const Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'copenhagen',
  jooptor: [
    Joop(text: 'Denmark', tuuraJoop: true),
    Joop(text: 'Ukrain', tuuraJoop: false),
    Joop(text: 'Poland', tuuraJoop: false),
    Joop(text: 'Norway', tuuraJoop: false)
  ],
);

const Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'berlin',
  jooptor: [
    Joop(text: 'Germany', tuuraJoop: true),
    Joop(text: 'Sweden', tuuraJoop: false),
    Joop(text: 'Greece', tuuraJoop: false),
    Joop(text: 'Turkey', tuuraJoop: false)
  ],
);

List<Suroo> surooJoopList = [s1, s2, s3, s4, s5];
