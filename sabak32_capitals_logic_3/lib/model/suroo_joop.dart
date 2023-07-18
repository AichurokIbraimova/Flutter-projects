class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({required this.text, required this.isBool});
  final String text;
  final bool isBool;
}

const Suroo s1 = Suroo(
  text: 'Paris',
  image: 'paris',
  jooptor: [
    Joop(text: 'Germany', isBool: false),
    Joop(text: 'Finland', isBool: false),
    Joop(text: 'France', isBool: true),
    Joop(text: 'Italia', isBool: false)
  ],
);

const Suroo s2 = Suroo(
  text: 'London',
  image: 'london',
  jooptor: [
    Joop(text: 'Spain', isBool: false),
    Joop(text: 'Great Britain', isBool: true),
    Joop(text: 'France', isBool: false),
    Joop(text: 'Russia', isBool: false)
  ],
);
const Suroo s3 = Suroo(
  text: 'Brusel',
  image: 'brusel',
  jooptor: [
    Joop(text: 'MAkedonia', isBool: false),
    Joop(text: 'Portugal', isBool: false),
    Joop(text: 'Albania', isBool: false),
    Joop(text: 'Belgium', isBool: true)
  ],
);

const Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'copenhagen',
  jooptor: [
    Joop(text: 'Denmark', isBool: true),
    Joop(text: 'Ukrain', isBool: false),
    Joop(text: 'Poland', isBool: false),
    Joop(text: 'Norway', isBool: false)
  ],
);

const Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'berlin',
  jooptor: [
    Joop(text: 'Germany', isBool: true),
    Joop(text: 'Sweden', isBool: false),
    Joop(text: 'Greece', isBool: false),
    Joop(text: 'Turkey', isBool: false)
  ],
);

List<Suroo> surooJoopList = [s1, s2, s3, s4, s5];
