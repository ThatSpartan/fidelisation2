# array = ['do', 'mare', 'syl', 'alex', 'do', 'jess', 'jul']

# print(array)

# array = list(filter(lambda x: x is 'do', array))

# print(array)

# code

members = []

class Member:       # Member class
    def SetFirstName(self, first_name):     # set first name
        self.first_name = first_name

    def SetLastName(self, last_name):       # set last name
        self.last_name = last_name

    def SetPoints(self, points):            # set points
        print(type(points))

        _type = type(points)

        if _type is int:
            self.points = []
            self.points.append(points)
        elif _type is list:
            self.points = points

    def GetFullName(self):                  # return member's full name
        return self.first_name + ' ' + self.last_name

    def GetPoints(self):
        s = ''
        for n in self.points:
            s += ' ' + str(n)
        return s

def exists(first_name, last_name):
    
    full_name = first_name + ' ' + last_name

    for m in members:
        
        if m.GetFullName() == full_name:
            return True

    return False

def get_member(first_name, last_name):

    full_name = first_name + ' ' + last_name

    for m in members:

        if m.GetFullName() == full_name:
            return m

    return None

def ask_command():
    _input = input('> ')
    _args = _input.split()

    for p in _args:
        print('p : ' + p)

    if len(_args) is 1:
        
        if _input == 'q':
            print('quitting..')
            quit()

        elif _args[0] == 'show':
            print('..showing members names..')
            for m in members:
                print('-- %s' % m.GetFullName())

        else:
            print('command not found or missing arguments')

    elif len(_args) > 1:

        if _args[0] == 'add':
            print('..adding..')

            if len(_args) >= 3:

                if not exists(_args[1], _args[2]):

                    _points = []
                    for p in _args:
                        print('p : ' + p)
                        _points.append(p)

                    print(_points)

                    _new = Member()
                    _new.SetFirstName(_args[1])
                    _new.SetLastName(_args[2])
                    _new.SetPoints(71)

                    # sanitize array

                    _pointsClean = [int(s) for s in _points if s.isdigit()]
                    print(_pointsClean)
                    _new.SetPoints(_pointsClean)

                    # end

                    print(_new.points)

                    members.append(_new)

                else:
                    print('member already exists')

            else:
                print('error [command/add] [first name] [last name] [points]')

        elif _args[0] == 'show' and _args[1] == 'a':

            for m in members:
                print('-- ' + m.GetFullName() + ' has' + m.GetPoints())

        elif _args[0] == 'remove':
            if len(_args) == 3:
                _member = get_member(_args[1], _args[2])
                if _member is not None:
                    members.remove(_member)
            else:
                print('please input first name and name only')

        # elif _args[0] == 'amount':
        #     _member = get_member(_args[1])
        #     if _member is not None:
        #         print(_member.points)
        #         print(_member.total_points())

        else:
            print('command not found')

if __name__ == '__main__':
    m = Member()
    m.SetFirstName('Dominik')
    m.SetLastName('Dumas')
    print(m.first_name)
    print(m.last_name)
    print(m.GetFullName())
    while True:
        ask_command()
