
          if(registerShortcut('default-menu', 'Kando - default-menu', '',
            () => {
              console.log('Kando: Triggered.');
              callDBus('menu.kando.Kando', '/menu/kando/Kando',
                       'menu.kando.Kando', 'trigger', 'default-menu',
                       () => console.log('Kando: Triggered.'));
            }
          )) {
            console.log('Kando: Registered shortcut default-menu');
          } else {
            console.log('Kando: Failed to registered shortcut default-menu');
          }
        