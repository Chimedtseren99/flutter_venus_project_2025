// Example of how you might use it in another widget's build method:
PetCard
(
name: "Harry",
child: Card( // Or any other widget representing Harry's card
child: Padding(
padding: const EdgeInsets.all(16.0),
child: Text("Meet Harry!"),
),
),
),

PetCard(
name: "Lopy",
child: Card( // Or any other widget representing Lopy's card
child: Column(
children: [
// Image.asset('assets/lopy_image.png'), // If you have an image
Text("This is Lopy"),
],
),
),
)
,
   