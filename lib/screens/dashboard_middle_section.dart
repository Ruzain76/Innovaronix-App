import 'package:flutter/material.dart';

class MiddleSection extends StatefulWidget {
  const MiddleSection({super.key});

  @override
  _MiddleSectionState createState() => _MiddleSectionState();
}

class _MiddleSectionState extends State<MiddleSection> {
  bool _isTableVisible = false;
  bool _isSearchRowVisible = false;
  final TextEditingController _searchController = TextEditingController();
  bool _showCloseIcon = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _showCloseIcon = _searchController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            _isSearchRowVisible
                                ? _buildSearchRow()
                                : _buildDefaultRow(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(color: Colors.grey.shade400, thickness: 1),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Update',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 8),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.arrow_drop_up,
                                    size: 16, color: Colors.black),
                                Icon(Icons.arrow_drop_down,
                                    size: 16, color: Colors.black),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'Your Cheetah Noman Raza 115 / LHR has now picked up your order and is speeding your way. '
                                  'You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza 115 / LHR’s '
                                  'temperature in the morning and it was 98 degrees Fahrenheit.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF474747),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  ),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Mon, 10 July 2022',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'To ensure your health safety...',
                                    hintStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const Icon(Icons.search,
                                  color: Colors.grey, size: 20),
                              const SizedBox(width: 8),
                              Container(
                                height: 24,
                                width: 1,
                                color: Colors.grey.shade300,
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.keyboard_arrow_down,
                                  color: Colors.grey, size: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Tasks Quick View",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.search,
                              color: Colors.grey, size: 20),
                          const SizedBox(width: 8),
                          Container(
                            height: 24,
                            width: 1,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: _isTableVisible
                                  ? const Color(0xFF474747)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              icon: Icon(
                                _isTableVisible
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Colors.grey,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isTableVisible = !_isTableVisible;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (_isTableVisible)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: 800,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildTableHeader(),
                            ListView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                _buildTableRow(
                                  teamName: 'Designing Team',
                                  creatorImagePath:
                                      'assets/images/avatar_black.png',
                                  creatorName: 'Mohsin Far...',
                                  assignedToAvatars: [
                                    'assets/images/avatar_one.png',
                                    'assets/images/avatar_two.png',
                                    'assets/images/avatar_blank.png',
                                  ],
                                  deadline: 'Dec 26, 2023',
                                  status: 'On going',
                                ),
                                _buildTableRow(
                                  teamName: 'Designing Team',
                                  creatorImagePath:
                                      'assets/images/avatar_black.png',
                                  creatorName: 'Mohsin Far...',
                                  assignedToAvatars: [
                                    'assets/images/avatar_one.png',
                                    'assets/images/avatar_two.png',
                                    'assets/images/avatar_blank.png',
                                  ],
                                  deadline: 'Dec 26, 2023',
                                  status: 'On going',
                                ),
                                _buildTableRow(
                                  teamName: 'Designing Team',
                                  creatorImagePath:
                                      'assets/images/avatar_black.png',
                                  creatorName: 'Mohsin Far...',
                                  assignedToAvatars: [
                                    'assets/images/avatar_one.png',
                                    'assets/images/avatar_two.png',
                                    'assets/images/avatar_blank.png',
                                  ],
                                  deadline: 'Dec 26, 2023',
                                  status: 'On going',
                                ),
                                _buildTableRow(
                                  teamName: 'Designing Team',
                                  creatorImagePath:
                                      'assets/images/avatar_black.png',
                                  creatorName: 'Mohsin Far...',
                                  assignedToAvatars: [
                                    'assets/images/avatar_one.png',
                                    'assets/images/avatar_two.png',
                                    'assets/images/avatar_blank.png',
                                  ],
                                  deadline: 'Dec 26, 2023',
                                  status: 'On going',
                                ),
                                _buildTableRow(
                                  teamName: 'Designing Team',
                                  creatorImagePath:
                                      'assets/images/avatar_black.png',
                                  creatorName: 'Mohsin Far...',
                                  assignedToAvatars: [
                                    'assets/images/avatar_one.png',
                                    'assets/images/avatar_two.png',
                                    'assets/images/avatar_blank.png',
                                  ],
                                  deadline: 'Dec 26, 2023',
                                  status: 'On going',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDefaultRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Project Update',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 12),
        Container(
          height: 25,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFF474747),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'Mark All Read',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
        const SizedBox(width: 12),
        IconButton(
          icon: const Icon(Icons.search, color: Colors.black),
          onPressed: () {
            setState(() {
              _isSearchRowVisible = true;
            });
          },
        ),
        const SizedBox(width: 12),
        Container(
          height: 25,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '10',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.keyboard_arrow_down, color: Colors.black),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Container(
          height: 25,
          decoration: BoxDecoration(
            color: const Color(0xFF474747),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Center(
            child: Icon(Icons.keyboard_arrow_up, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchRow() {
    return Row(
      children: [
        Container(
          height: 36,
          width: 200,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.search, color: Colors.grey, size: 20),
              const SizedBox(width: 5),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                    isCollapsed: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              if (_showCloseIcon)
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.grey, size: 20),
                  onPressed: () {
                    setState(() {
                      _searchController.clear();
                      _showCloseIcon = false;
                    });
                  },
                ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: const Icon(Icons.search, color: Colors.black),
          onPressed: () {
            setState(() {
              _isSearchRowVisible = false;
            });
          },
        ),
        const SizedBox(width: 5),
        Container(
          height: 25,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '10',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.keyboard_arrow_down, color: Colors.black),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Container(
          height: 25,
          decoration: BoxDecoration(
            color: const Color(0xFF474747),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Center(
            child: Icon(Icons.keyboard_arrow_up, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildTableHeader() {
    return Container(
      color: Colors.grey[200],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildHeaderCell('Team Name', flex: 2),
          _buildHeaderCell('Creator', flex: 3),
          _buildHeaderCell('Assigned To', flex: 3),
          _buildHeaderCell('Deadline', flex: 2),
          _buildHeaderCell('Status', flex: 2),
          _buildHeaderCell('Action', flex: 3, showArrows: false),
        ],
      ),
    );
  }

  Widget _buildHeaderCell(String text, {int flex = 1, bool showArrows = true}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 5),
            if (showArrows)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_up, size: 16),
                  Icon(Icons.keyboard_arrow_down, size: 16),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTableRow({
    required String teamName,
    required String creatorImagePath,
    required String creatorName,
    required List<String> assignedToAvatars,
    required String deadline,
    required String status,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: const Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildRowCell(Text(teamName), flex: 2),
          _buildRowCell(
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(creatorImagePath),
                ),
                const SizedBox(width: 8),
                Text(creatorName, style: const TextStyle(fontSize: 14)),
              ],
            ),
            flex: 3,
          ),
          _buildRowCell(
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  ...assignedToAvatars.asMap().entries.map((entry) {
                    int index = entry.key;
                    String avatar = entry.value;
                    return Positioned(
                      left: index * 15.0,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(avatar),
                      ),
                    );
                  }),
                  if (assignedToAvatars.length > 2)
                    const Positioned(
                      left: 2 * 15.0,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Color(0xFF474747),
                        child: Text(
                          '1+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            flex: 3,
          ),
          _buildRowCell(Text(deadline), flex: 2),
          _buildRowCell(_buildStatusBox(status), flex: 2),
          _buildRowCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.edit,
                    size: 17,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.message,
                    size: 17,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.folder,
                    size: 17,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildRowCell(Widget child, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: child,
        ),
      ),
    );
  }

  Widget _buildStatusBox(String status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.lightBlue[100]!,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        status,
        style: const TextStyle(color: Colors.black, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }
}
