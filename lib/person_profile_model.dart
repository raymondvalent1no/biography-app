class PersonProfileModel {
  final String id;
  final String name;
  final String yearBorn;
  final String job;
  final String image;
  final String quotes;
  final String description;

  PersonProfileModel(
      {required this.id,
      required this.description,
      required this.image,
      required this.name,
      required this.yearBorn,
      required this.job,
      required this.quotes});
}

var personProfileModelList = [
  PersonProfileModel(
    id: '1',
    name: 'STEVE\nJOBS',
    yearBorn: 'February 24, 1955 - October 5, 2011',
    job: 'Co-Founder of Apple',
    image: 'assets/stevejobs.png',
    quotes: '"Innovation distinguishes between a leader and a follower."',
    description:
        'Steve Jobs, the American businessman and technology visionary who is best known as the co-founder, chairman, and chief executive officer of Apple Inc, was born on February 24, 1955.\n\nHis parents were two University of Wisconsin graduate students, Joanne Carole Schieble and Syrian-born Abdulfattah Jandali. They were both unmarried at the time. Jandali, who was teaching in Wisconsin when Steve was born, said he had no choice but to put the baby up for adoption because his girlfriend\'s family objected to their relationship.',
  ),
  PersonProfileModel(
    id: '2',
    name: 'ALBERT\nEINSTEIN',
    yearBorn: 'March 14, 1879 - April 18, 1955',
    job: 'Theoretical Physicist',
    image: 'assets/einstein.jpg',
    quotes: '"In the midst of every crisis, lies great opportunity".',
    description:
        'Albert Einstein was a famous physicist. His research spanned from quantum mechanics to theories about gravity and motion. After publishing some groundbreaking papers, Einstein toured the world and gave speeches about his discoveries. In 1921 he won the Nobel Prize for Physics for his discovery of the photoelectric effect.\n\nAlbert Einstein is best known for his equation E = mc2, which states that energy and mass (matter) are the same thing, just in different forms. He is also known for his discovery of the photoelectric effect\n, for which he won the Nobel Prize for Physics in 1921. Einstein developed a theory of special and general relativity, which helped to complicate and expand upon theories that had been put forth by Isaac Newton over 200 years prior. ',
  ),
  PersonProfileModel(
    id: '3',
    name: 'JOHN\nLENNON',
    yearBorn: 'October 9, 1940 - December 8, 1980',
    job: 'Singer-songwriter',
    image: 'assets/lennon.jpg',
    quotes: '"Time you enjoy wasting, was not wasted."',
    description:
        'John Lennon was a British singer-songwriter and a key member of the Beatles – a musical and cultural phenomenon. After the Beatles, Lennon went on to have a distinguished solo career. Lennon was also an icon of the 1960s counter-culture revolution and was an anti-war activist.\n\nBy 2012, Lennon’s solo album sales in the United States exceeded 14 million and, as writer, co-writer, or performer, he is responsible for 25 number-one singles on the US Hot 100 chart. In 2002, a BBC poll on the 100 Greatest Britons voted him eighth and, in 2008, Rolling Stone ranked him the fifth-greatest singer of all time. He was posthumously inducted into the Songwriters Hall of Fame in 1987, and into the Rock and Roll Hall of Fame twice, as a member of the Beatles in 1988 and as a solo artist in 1994.',
  ),
  PersonProfileModel(
    id: '4',
    name: 'MARTIN\nLUTHER KING',
    yearBorn: 'January 15, 1929 - April 4, 1968',
    job: 'Leader of American Civil Rights',
    image: 'assets/martin.jpg',
    quotes:
        '"Our lives begin to end the day we become silent about things that matter."',
    description:
        'Martin Luther King Jr. was a Baptist minister and civil-rights activist who had a seismic impact on race relations in the United States, beginning in the mid-1950s.Among his many efforts, King headed the Southern Christian Leadership Conference (SCLC).\n\n Through his activism and inspirational speeches, he played a pivotal role in ending the legal segregation of African American citizens in the United States, as well as the creation of the Civil Rights Act of 1964 and the Voting Rights Act of 1965.King won the Nobel Peace Prize in 1964, among several other honors. He continues to be remembered as one of the most influential and inspirational African American leaders in history.',
  ),
  PersonProfileModel(
      id: '5',
      name: 'ADOLF\nHITLER',
      yearBorn: 'April 20, 1889 - April 30, 1945',
      job: 'Leader of Nazi',
      image: 'assets/hitler.jpg',
      quotes:
          '"After taking decison never turn back even if you get Thousand difficulties!"',
      description:
          'Hitler was of great historical importance—a term that does not imply a positive judgment—because his actions changed the course of the world. He was responsible for starting World War II, which resulted in the deaths of more than 50 million people. It also led to the extension of the Soviet Union’s power in eastern, central, and Balkan Europe, enabled a communist movement to eventually achieve control in China, and marked the decisive shift of power away from western Europe and toward the United States and the Soviet Union. In addition, Hitler was responsible for the Holocaust, the state-sponsored killing of six million Jews and millions of others.\n\nHitler’s rise to power traces to 1919, when he joined the German Workers’ Party that became the Nazi Party. With his oratorical skills and use of propaganda, he soon became its leader.'),
];
