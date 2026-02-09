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
