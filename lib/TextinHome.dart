 ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: menuItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      MenuItem menuItem = menuItems[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 130,
                              decoration: const BoxDecoration(
                                color: Color(0xffFFFFFF),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                menuItem.pdpImageUrl))),
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 18),
                                            child: Container(
                                              color: Colors.amber,
                                              height: 12,
                                              width: 12,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          SizedBox(
                                            width: 148,
                                            height: 36,
                                            child: Text(
                                              menuItem.title.toString(),
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff3B414F),
                                              ),
                                              textAlign: TextAlign.left,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            color: Colors.amber,
                                            width: 8.250007629394531,
                                            height: 10.484748840332031,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            menuItem.totalCalories.value
                                                .toString(),
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff3B414F),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "₹${menuItem.price.toString()}",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff3B414F),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            width: 86,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                width: 2,
                                                color: const Color(0xffAD9189),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "ADD",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(0xffAD9189),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 14,
                                      ),
                                      Container(
                                        width: 164,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          gradient: const RadialGradient(
                                            colors: [
                                              Color(0xffEC6978),
                                              Color(0xffD95565),
                                            ],
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            menuItem.offerDetails ??
                                                "20% OFF. Min order ₹1000",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Divider(
                              color: Colors.blueGrey,
                              thickness: 0.3,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      );
                      // ListTile(
                      //   // leading: Text(menuItem.offerDetails??'NO_Offer'),
                      //   leading: Container(decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(9),
                      //     image: DecorationImage(image: NetworkImage(menuItem.pdpImageUrl),fit: BoxFit.cover)
                      //   ),height: 40,width: 40,),
                      //   title: Text(menuItem.title.toString()),
                      //   subtitle: Text(menuItem.totalCalories.value.toString()),
                      //   trailing: Text(menuItem.price.toString()),
                      //   // Add more information as needed
                      // );
                    },
                  ),













                   ListView.builder(
                                            primary: false,
                                            shrinkWrap: true,
                                            itemCount: menuItems.length,
                                            itemBuilder: (BuildContext context,
                                                int index1) {
                                                  if(menuItems[index1].dishType.toLowerCase()=='$ee'.toLowerCase())
                                               { return Text(menuItems[index1].title.toLowerCase());}
                                                })