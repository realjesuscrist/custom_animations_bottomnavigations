import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LabelBottomNavigationItem {
  final String label;
  final IconData icon;
  LabelBottomNavigationItem({required this.label, required this.icon});
}

class LabelBottomNavigationBar extends StatefulWidget {
  final List<LabelBottomNavigationItem> items;
  final int index;
  final Function(int) onChange;
  const LabelBottomNavigationBar({
    super.key,
    required this.items,
    required this.index,
    required this.onChange,
  });

  @override
  State<LabelBottomNavigationBar> createState() => _LabelBottomNavigationBarState();
}

class _LabelBottomNavigationBarState extends State<LabelBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        children: List.generate(
            widget.items.length,
            (index) => Expanded(
                    child: InkWell(
                  onTap: () => widget.onChange(index),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: widget.index == index ? 35 : 25,
                        width: widget.index == index ? 35 : 25,
                        child: FittedBox(
                          child: Icon(
                            widget.items[index].icon,
                            color: widget.index == index ? Colors.orange : Colors.grey.shade400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 200),
                              bottom: widget.index == index ? 0 : -25,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                                  decoration: const BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(8),
                                      )),
                                  child: Text(
                                    widget.items[index].label,
                                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
