members = []


class Member:

    def __init__(self):
        self.firstName = ''
        self.lastName = ''
        self.points = []

    def GetFullName(self):
        return self.firstName + ' ' + self.lastName

    def SetFirstName(self, firstName):
        self.firstName = firstName

    def SetLastName(self, lastName):
        self.lastName = lastName

    def SetPoints(self, points):
        print(type(points))
        for p in points:
            try:
                p = int(p)
                self.points.append(p)
            except ValueError:
                pass

    def GetPoints(self):
        s = ''
        totalPoints = 0
        bonusPoints = 0

        for p in self.points:
            s += str(p) + ', '
            totalPoints += p
        s = s[:-2]

        if totalPoints >= 200:
            bonusPoints = 20
            totalPoints += bonusPoints
            s += '\n' + str(bonusPoints) + \
                ' has been added for having more than 200 points'

        return s


def add(_in):
    print('add')

    if len(_in) > 2:

        firstName = _in[1]
        lastName = _in[2]
        points = []

        for i in _in:
            points.append(i)

        points = points[1:]

        x = Member()
        x.SetFirstName(firstName)
        x.SetLastName(lastName)
        x.SetPoints(points)
        members.append(x)

    else:
        print('not enough arguments')


def remove(_in):
    print('remove')
    print(_in)

    if len(_in) < 3:
        print('missing arguments')

    elif len(_in) > 3:
        print('too many arguments')

    elif len(_in) == 3:
        firstName = _in[1]
        lastName = _in[2]
        name = firstName + ' ' + lastName

        print('removing member ' + name)

        for m in members:
            if m.GetFullName() == name:
                members.remove(m)
                return

    print('member not found')


def show():
    print('show')
    for m in members:
        print('\n')
        print(m.GetFullName())
        print('    -- ' + m.GetPoints())
    print('\n')


def get_command():
    _in = input('> ')
    _in = list(_in.split())

    if _in[0] == 'show':
        show()

    elif _in[0] == 'add':
        add(_in)

    elif _in[0] == 'remove':
        remove(_in)

    elif _in[0] == 'q':
        print('quit')
        quit()


if __name__ == '__main__':
    while True:
        get_command()
