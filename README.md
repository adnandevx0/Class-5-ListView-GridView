# projet4

A new Flutter project.

## Getting Started

<pre>
body: Column(
        children: [
          Expanded(child:
          //লিস্ট ভিউ বিল্ডার এর আগে অবশ্যই এক্সপেন্ড ব্যবহার করতে হবে
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Container(
                    color: Colors.cyanAccent,
                    height: 80,
                    width: double.infinity,
                    child: ListTile(
                      title: Text("Adnan Khan"),
                      subtitle: Text("Villain Hacker"),
                      leading: Icon(Icons.twenty_two_mp),
                      trailing: Icon(Icons.call),
                    ),
                  ),
                ),
              );
            },
          ),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
</pre>
<h3>GridView Builder</h3>
<pre>

        Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: listx.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 20,
                  width: 20,
                  color: Colors.red,
                  child: Text(
                    "${listx[index]}",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                );
              },
            ),
          ),
        ],
      ),
</pre>


<h3>ListView Builder</h3>
<pre>

    
class _HomePageState extends State<HomePage> {
  @override
  List<int> listx = [
    2,
    3,
    34,
    3,
    543,
    543,
    54,
    35,
    435,
    43,
    543,
    5,
    435,
    43,
    543,
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MeetSoc"),
        leading: Icon(Icons.usb),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.near_me_rounded)),
        ],
      ),
      body: Column(
        children: [
          //Expanded Must need
          Expanded(
            child: ListView.builder(
              itemCount: listx.length,
              itemBuilder: (context, index) {
                return Padding(padding: EdgeInsetsGeometry.all(4),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.red,
                  child: Text(
                    "${listx[index]}",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),);
              },
            ),
          ),
        ],
      ),
    );
  }
}

</pre>
