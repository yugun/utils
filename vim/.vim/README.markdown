autoload/                                                                                           0000775 0001750 0001750 00000000000 12401543467 013374  5                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              autoload/nerdtree/                                                                                  0000775 0001750 0001750 00000000000 12401543467 015204  5                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              autoload/nerdtree/ui_glue.vim                                                                       0000664 0001750 0001750 00000055365 12401543467 017370  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              if exists("g:loaded_nerdtree_ui_glue_autoload")
    finish
endif
let g:loaded_nerdtree_ui_glue_autoload = 1

" FUNCTION: nerdtree#ui_glue#createDefaultBindings() {{{1
function! nerdtree#ui_glue#createDefaultBindings()
    let s = '<SNR>' . s:SID() . '_'

    call NERDTreeAddKeyMap({ 'key': '<MiddleRelease>', 'scope': "all", 'callback': s."handleMiddleMouse" })
    call NERDTreeAddKeyMap({ 'key': '<LeftRelease>', 'scope': "all", 'callback': s."handleLeftClick" })
    call NERDTreeAddKeyMap({ 'key': '<2-LeftMouse>', 'scope': "DirNode", 'callback': s."activateDirNode" })
    call NERDTreeAddKeyMap({ 'key': '<2-LeftMouse>', 'scope': "FileNode", 'callback': s."activateFileNode" })
    call NERDTreeAddKeyMap({ 'key': '<2-LeftMouse>', 'scope': "Bookmark", 'callback': s."activateBookmark" })
    call NERDTreeAddKeyMap({ 'key': '<2-LeftMouse>', 'scope': "all", 'callback': s."activateAll" })


    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapActivateNode, 'scope': "DirNode", 'callback': s."activateDirNode" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapActivateNode, 'scope': "FileNode", 'callback': s."activateFileNode" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapActivateNode, 'scope': "Bookmark", 'callback': s."activateBookmark" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapActivateNode, 'scope': "all", 'callback': s."activateAll" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenSplit, 'scope': "Node", 'callback': s."openHSplit" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenVSplit, 'scope': "Node", 'callback': s."openVSplit" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenSplit, 'scope': "Bookmark", 'callback': s."openHSplit" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenVSplit, 'scope': "Bookmark", 'callback': s."openVSplit" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapPreview, 'scope': "Node", 'callback': s."previewNodeCurrent" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapPreviewVSplit, 'scope': "Node", 'callback': s."previewNodeVSplit" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapPreviewSplit, 'scope': "Node", 'callback': s."previewNodeHSplit" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapPreview, 'scope': "Bookmark", 'callback': s."previewNodeCurrent" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapPreviewVSplit, 'scope': "Bookmark", 'callback': s."previewNodeVSplit" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapPreviewSplit, 'scope': "Bookmark", 'callback': s."previewNodeHSplit" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenRecursively, 'scope': "DirNode", 'callback': s."openNodeRecursively" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapUpdir, 'scope': "all", 'callback': s."upDirCurrentRootClosed" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapUpdirKeepOpen, 'scope': "all", 'callback': s."upDirCurrentRootOpen" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapChangeRoot, 'scope': "Node", 'callback': s."chRoot" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapChdir, 'scope': "Node", 'callback': s."chCwd" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapQuit, 'scope': "all", 'callback': s."closeTreeWindow" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapCWD, 'scope': "all", 'callback': "nerdtree#ui_glue#chRootCwd" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapRefreshRoot, 'scope': "all", 'callback': s."refreshRoot" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapRefresh, 'scope': "Node", 'callback': s."refreshCurrent" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapHelp, 'scope': "all", 'callback': s."displayHelp" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapToggleZoom, 'scope': "all", 'callback': s."toggleZoom" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapToggleHidden, 'scope': "all", 'callback': s."toggleShowHidden" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapToggleFilters, 'scope': "all", 'callback': s."toggleIgnoreFilter" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapToggleFiles, 'scope': "all", 'callback': s."toggleShowFiles" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapToggleBookmarks, 'scope': "all", 'callback': s."toggleShowBookmarks" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapCloseDir, 'scope': "Node", 'callback': s."closeCurrentDir" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapCloseChildren, 'scope': "DirNode", 'callback': s."closeChildren" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapMenu, 'scope': "Node", 'callback': s."showMenu" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapJumpParent, 'scope': "Node", 'callback': s."jumpToParent" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapJumpFirstChild, 'scope': "Node", 'callback': s."jumpToFirstChild" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapJumpLastChild, 'scope': "Node", 'callback': s."jumpToLastChild" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapJumpRoot, 'scope': "all", 'callback': s."jumpToRoot" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapJumpNextSibling, 'scope': "Node", 'callback': s."jumpToNextSibling" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapJumpPrevSibling, 'scope': "Node", 'callback': s."jumpToPrevSibling" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenInTab, 'scope': "Node", 'callback': s."openInNewTab" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenInTabSilent, 'scope': "Node", 'callback': s."openInNewTabSilent" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenInTab, 'scope': "Bookmark", 'callback': s."openInNewTab" })
    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenInTabSilent, 'scope': "Bookmark", 'callback': s."openInNewTabSilent" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapOpenExpl, 'scope': "DirNode", 'callback': s."openExplorer" })

    call NERDTreeAddKeyMap({ 'key': g:NERDTreeMapDeleteBookmark, 'scope': "Bookmark", 'callback': s."deleteBookmark" })
endfunction


"SECTION: Interface bindings {{{1
"============================================================

"FUNCTION: s:activateAll() {{{1
"handle the user activating the updir line
function! s:activateAll()
    if getline(".") ==# nerdtree#treeUpDirLine()
        return nerdtree#ui_glue#upDir(0)
    endif
endfunction

"FUNCTION: s:activateDirNode() {{{1
"handle the user activating a tree node
function! s:activateDirNode(node)
    call a:node.activate({'reuse': 1})
endfunction

"FUNCTION: s:activateFileNode() {{{1
"handle the user activating a tree node
function! s:activateFileNode(node)
    call a:node.activate({'reuse': 1, 'where': 'p'})
endfunction

"FUNCTION: s:activateBookmark() {{{1
"handle the user activating a bookmark
function! s:activateBookmark(bm)
    call a:bm.activate(!a:bm.path.isDirectory ? {'where': 'p'} : {})
endfunction

" FUNCTION: nerdtree#ui_glue#bookmarkNode(name) {{{1
" Associate the current node with the given name
function! nerdtree#ui_glue#bookmarkNode(...)
    let currentNode = g:NERDTreeFileNode.GetSelected()
    if currentNode != {}
        let name = a:1
        if empty(name)
            let name = currentNode.path.getLastPathComponent(0)
        endif
        try
            call currentNode.bookmark(name)
            call b:NERDTree.render()
        catch /^NERDTree.IllegalBookmarkNameError/
            call nerdtree#echo("bookmark names must not contain spaces")
        endtry
    else
        call nerdtree#echo("select a node first")
    endif
endfunction

" FUNCTION: s:chCwd(node) {{{1
function! s:chCwd(node)
    try
        call a:node.path.changeToDir()
    catch /^NERDTree.PathChangeError/
        call nerdtree#echoWarning("could not change cwd")
    endtry
endfunction

" FUNCTION: s:chRoot(node) {{{1
" changes the current root to the selected one
function! s:chRoot(node)
    call a:node.makeRoot()
    call b:NERDTree.render()
    call b:NERDTreeRoot.putCursorHere(0, 0)
endfunction

" FUNCTION: s:nerdtree#ui_glue#chRootCwd() {{{1
" changes the current root to CWD
function! nerdtree#ui_glue#chRootCwd()
    try
        let cwd = g:NERDTreePath.New(getcwd())
    catch /^NERDTree.InvalidArgumentsError/
        call nerdtree#echo("current directory does not exist.")
        return
    endtry
    if cwd.str() == g:NERDTreeFileNode.GetRootForTab().path.str()
       return
    endif
    call s:chRoot(g:NERDTreeDirNode.New(cwd))
endfunction

" FUNCTION: nnerdtree#ui_glue#clearBookmarks(bookmarks) {{{1
function! nerdtree#ui_glue#clearBookmarks(bookmarks)
    if a:bookmarks ==# ''
        let currentNode = g:NERDTreeFileNode.GetSelected()
        if currentNode != {}
            call currentNode.clearBookmarks()
        endif
    else
        for name in split(a:bookmarks, ' ')
            let bookmark = g:NERDTreeBookmark.BookmarkFor(name)
            call bookmark.delete()
        endfor
    endif
    call b:NERDTree.render()
endfunction

" FUNCTION: s:closeChildren(node) {{{1
" closes all childnodes of the current node
function! s:closeChildren(node)
    call a:node.closeChildren()
    call b:NERDTree.render()
    call a:node.putCursorHere(0, 0)
endfunction

" FUNCTION: s:closeCurrentDir(node) {{{1
" closes the parent dir of the current node
function! s:closeCurrentDir(node)
    let parent = a:node.parent
    if parent ==# {} || parent.isRoot()
        call nerdtree#echo("cannot close tree root")
    else
        while g:NERDTreeCascadeOpenSingleChildDir && !parent.parent.isRoot()
            if parent.parent.getVisibleChildCount() == 1
                call parent.close()
                let parent = parent.parent
            else
                break
            endif
        endwhile
        call parent.close()
        call b:NERDTree.render()
        call parent.putCursorHere(0, 0)
    endif
endfunction

" FUNCTION: s:closeTreeWindow() {{{1
" close the tree window
function! s:closeTreeWindow()
    if b:NERDTreeType ==# "secondary" && b:NERDTreePreviousBuf != -1
        exec "buffer " . b:NERDTreePreviousBuf
    else
        if winnr("$") > 1
            call nerdtree#closeTree()
        else
            call nerdtree#echo("Cannot close last window")
        endif
    endif
endfunction

" FUNCTION: s:deleteBookmark(bm) {{{1
" if the cursor is on a bookmark, prompt to delete
function! s:deleteBookmark(bm)
    echo  "Are you sure you wish to delete the bookmark:\n\"" . a:bm.name . "\" (yN):"

    if  nr2char(getchar()) ==# 'y'
        try
            call a:bm.delete()
            call b:NERDTree.render()
            redraw
        catch /^NERDTree/
            call nerdtree#echoWarning("Could not remove bookmark")
        endtry
    else
        call nerdtree#echo("delete aborted" )
    endif

endfunction

" FUNCTION: s:displayHelp() {{{1
" toggles the help display
function! s:displayHelp()
    let b:treeShowHelp = b:treeShowHelp ? 0 : 1
    call b:NERDTree.render()
    call b:NERDTree.ui.centerView()
endfunction

" FUNCTION: s:findAndRevealPath() {{{1
function! s:findAndRevealPath()
    try
        let p = g:NERDTreePath.New(expand("%:p"))
    catch /^NERDTree.InvalidArgumentsError/
        call nerdtree#echo("no file for the current buffer")
        return
    endtry

    if p.isUnixHiddenPath()
        let showhidden=g:NERDTreeShowHidden
        let g:NERDTreeShowHidden = 1
    endif

    if !g:NERDTree.ExistsForTab()
        try
            let cwd = g:NERDTreePath.New(getcwd())
        catch /^NERDTree.InvalidArgumentsError/
            call nerdtree#echo("current directory does not exist.")
            let cwd = p.getParent()
        endtry

        if p.isUnder(cwd)
            call g:NERDTreeCreator.CreatePrimary(cwd.str())
        else
            call g:NERDTreeCreator.CreatePrimary(p.getParent().str())
        endif
    else
        if !p.isUnder(g:NERDTreeFileNode.GetRootForTab().path)
            if !nerdtree#isTreeOpen()
                call g:NERDTreeCreator.TogglePrimary('')
            else
                call nerdtree#putCursorInTreeWin()
            endif
            let b:NERDTreeShowHidden = g:NERDTreeShowHidden
            call s:chRoot(g:NERDTreeDirNode.New(p.getParent()))
        else
            if !nerdtree#isTreeOpen()
                call g:NERDTreeCreator.TogglePrimary("")
            endif
        endif
    endif
    call nerdtree#putCursorInTreeWin()
    call b:NERDTreeRoot.reveal(p)

    if p.isUnixHiddenFile()
        let g:NERDTreeShowHidden = showhidden
    endif
endfunction

"FUNCTION: s:handleLeftClick() {{{1
"Checks if the click should open the current node
function! s:handleLeftClick()
    let currentNode = g:NERDTreeFileNode.GetSelected()
    if currentNode != {}

        "the dir arrows are multibyte chars, and vim's string functions only
        "deal with single bytes - so split the line up with the hack below and
        "take the line substring manually
        let line = split(getline(line(".")), '\zs')
        let startToCur = ""
        for i in range(0,len(line)-1)
            let startToCur .= line[i]
        endfor

        if currentNode.path.isDirectory
            if startToCur =~# nerdtree#treeMarkupReg() && startToCur =~# '[+~▾▸] \?$'
                call currentNode.activate()
                return
            endif
        endif

        if (g:NERDTreeMouseMode ==# 2 && currentNode.path.isDirectory) || g:NERDTreeMouseMode ==# 3
            let char = strpart(startToCur, strlen(startToCur)-1, 1)
            if char !~# nerdtree#treeMarkupReg()
                if currentNode.path.isDirectory
                    call currentNode.activate()
                else
                    call currentNode.activate({'reuse': 1, 'where': 'p'})
                endif
                return
            endif
        endif
    endif
endfunction

" FUNCTION: s:handleMiddleMouse() {{{1
function! s:handleMiddleMouse()
    let curNode = g:NERDTreeFileNode.GetSelected()
    if curNode ==# {}
        call nerdtree#echo("Put the cursor on a node first" )
        return
    endif

    if curNode.path.isDirectory
        call nerdtree#openExplorer(curNode)
    else
        call curNode.open({'where': 'h'})
    endif
endfunction

" FUNCTION: s:jumpToChild(direction) {{{2
" Args:
" direction: 0 if going to first child, 1 if going to last
function! s:jumpToChild(currentNode, direction)
    if a:currentNode.isRoot()
        return nerdtree#echo("cannot jump to " . (a:direction ? "last" : "first") .  " child")
    end
    let dirNode = a:currentNode.parent
    let childNodes = dirNode.getVisibleChildren()

    let targetNode = childNodes[0]
    if a:direction
        let targetNode = childNodes[len(childNodes) - 1]
    endif

    if targetNode.equals(a:currentNode)
        let siblingDir = a:currentNode.parent.findOpenDirSiblingWithVisibleChildren(a:direction)
        if siblingDir != {}
            let indx = a:direction ? siblingDir.getVisibleChildCount()-1 : 0
            let targetNode = siblingDir.getChildByIndex(indx, 1)
        endif
    endif

    call targetNode.putCursorHere(1, 0)

    call b:NERDTree.ui.centerView()
endfunction


" FUNCTION: nerdtree#ui_glue#invokeKeyMap(key) {{{1
"this is needed since I cant figure out how to invoke dict functions from a
"key map
function! nerdtree#ui_glue#invokeKeyMap(key)
    call g:NERDTreeKeyMap.Invoke(a:key)
endfunction

" FUNCTION: s:jumpToFirstChild() {{{1
" wrapper for the jump to child method
function! s:jumpToFirstChild(node)
    call s:jumpToChild(a:node, 0)
endfunction

" FUNCTION: s:jumpToLastChild() {{{1
" wrapper for the jump to child method
function! s:jumpToLastChild(node)
    call s:jumpToChild(a:node, 1)
endfunction

" FUNCTION: s:jumpToParent(node) {{{1
" moves the cursor to the parent of the current node
function! s:jumpToParent(node)
    if !empty(a:node.parent)
        call a:node.parent.putCursorHere(1, 0)
        call b:NERDTree.ui.centerView()
    else
        call nerdtree#echo("cannot jump to parent")
    endif
endfunction

" FUNCTION: s:jumpToRoot() {{{1
" moves the cursor to the root node
function! s:jumpToRoot()
    call b:NERDTreeRoot.putCursorHere(1, 0)
    call b:NERDTree.ui.centerView()
endfunction

" FUNCTION: s:jumpToNextSibling(node) {{{1
function! s:jumpToNextSibling(node)
    call s:jumpToSibling(a:node, 1)
endfunction

" FUNCTION: s:jumpToPrevSibling(node) {{{1
function! s:jumpToPrevSibling(node)
    call s:jumpToSibling(a:node, 0)
endfunction

" FUNCTION: s:jumpToSibling(currentNode, forward) {{{2
" moves the cursor to the sibling of the current node in the given direction
"
" Args:
" forward: 1 if the cursor should move to the next sibling, 0 if it should
" move back to the previous sibling
function! s:jumpToSibling(currentNode, forward)
    let sibling = a:currentNode.findSibling(a:forward)

    if !empty(sibling)
        call sibling.putCursorHere(1, 0)
        call b:NERDTree.ui.centerView()
    endif
endfunction

" FUNCTION: nerdtree#ui_glue#openBookmark(name) {{{1
" put the cursor on the given bookmark and, if its a file, open it
function! nerdtree#ui_glue#openBookmark(name)
    try
        let targetNode = g:NERDTreeBookmark.GetNodeForName(a:name, 0)
        call targetNode.putCursorHere(0, 1)
        redraw!
    catch /^NERDTree.BookmarkedNodeNotFoundError/
        call nerdtree#echo("note - target node is not cached")
        let bookmark = g:NERDTreeBookmark.BookmarkFor(a:name)
        let targetNode = g:NERDTreeFileNode.New(bookmark.path)
    endtry
    if targetNode.path.isDirectory
        call targetNode.openExplorer()
    else
        call targetNode.open({'where': 'p'})
    endif
endfunction

" FUNCTION: s:openHSplit(target) {{{1
function! s:openHSplit(target)
    call a:target.activate({'where': 'h'})
endfunction

" FUNCTION: s:openVSplit(target) {{{1
function! s:openVSplit(target)
    call a:target.activate({'where': 'v'})
endfunction

" FUNCTION: s:openExplorer(node) {{{1
function! s:openExplorer(node)
    call a:node.openExplorer()
endfunction

" FUNCTION: s:openInNewTab(target) {{{1
function! s:openInNewTab(target)
    call a:target.activate({'where': 't'})
endfunction

" FUNCTION: s:openInNewTabSilent(target) {{{1
function! s:openInNewTabSilent(target)
    call a:target.activate({'where': 't', 'stay': 1})
endfunction

" FUNCTION: s:openNodeRecursively(node) {{{1
function! s:openNodeRecursively(node)
    call nerdtree#echo("Recursively opening node. Please wait...")
    call a:node.openRecursively()
    call b:NERDTree.render()
    redraw
    call nerdtree#echo("Recursively opening node. Please wait... DONE")
endfunction

"FUNCTION: s:previewNodeCurrent(node) {{{1
function! s:previewNodeCurrent(node)
    call a:node.open({'stay': 1, 'where': 'p', 'keepopen': 1})
endfunction

"FUNCTION: s:previewNodeHSplit(node) {{{1
function! s:previewNodeHSplit(node)
    call a:node.open({'stay': 1, 'where': 'h', 'keepopen': 1})
endfunction

"FUNCTION: s:previewNodeVSplit(node) {{{1
function! s:previewNodeVSplit(node)
    call a:node.open({'stay': 1, 'where': 'v', 'keepopen': 1})
endfunction

" FUNCTION: nerdtree#ui_glue#revealBookmark(name) {{{1
" put the cursor on the node associate with the given name
function! nerdtree#ui_glue#revealBookmark(name)
    try
        let targetNode = g:NERDTreeBookmark.GetNodeForName(a:name, 0)
        call targetNode.putCursorHere(0, 1)
    catch /^NERDTree.BookmarkNotFoundError/
        call nerdtree#echo("Bookmark isnt cached under the current root")
    endtry
endfunction

" FUNCTION: s:refreshRoot() {{{1
" Reloads the current root. All nodes below this will be lost and the root dir
" will be reloaded.
function! s:refreshRoot()
    call nerdtree#echo("Refreshing the root node. This could take a while...")
    call b:NERDTreeRoot.refresh()
    call b:NERDTree.render()
    redraw
    call nerdtree#echo("Refreshing the root node. This could take a while... DONE")
endfunction

" FUNCTION: s:refreshCurrent(node) {{{1
" refreshes the root for the current node
function! s:refreshCurrent(node)
    let node = a:node
    if !node.path.isDirectory
        let node = node.parent
    endif

    call nerdtree#echo("Refreshing node. This could take a while...")
    call node.refresh()
    call b:NERDTree.render()
    redraw
    call nerdtree#echo("Refreshing node. This could take a while... DONE")
endfunction

" FUNCTION: nerdtree#ui_glue#setupCommands() {{{1
function! nerdtree#ui_glue#setupCommands()
    command! -n=? -complete=dir -bar NERDTree :call g:NERDTreeCreator.CreatePrimary('<args>')
    command! -n=? -complete=dir -bar NERDTreeToggle :call g:NERDTreeCreator.TogglePrimary('<args>')
    command! -n=0 -bar NERDTreeClose :call nerdtree#closeTreeIfOpen()
    command! -n=1 -complete=customlist,nerdtree#completeBookmarks -bar NERDTreeFromBookmark call g:NERDTreeCreator.CreatePrimary('<args>')
    command! -n=0 -bar NERDTreeMirror call g:NERDTreeCreator.CreateMirror()
    command! -n=0 -bar NERDTreeFind call s:findAndRevealPath()
    command! -n=0 -bar NERDTreeFocus call NERDTreeFocus()
    command! -n=0 -bar NERDTreeCWD call NERDTreeCWD()
endfunction

" Function: s:SID()   {{{1
function s:SID()
    if !exists("s:sid")
        let s:sid = matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
    endif
    return s:sid
endfun

" FUNCTION: s:showMenu(node) {{{1
function! s:showMenu(node)
    let mc = g:NERDTreeMenuController.New(g:NERDTreeMenuItem.AllEnabled())
    call mc.showMenu()
endfunction

" FUNCTION: s:toggleIgnoreFilter() {{{1
function! s:toggleIgnoreFilter()
    call b:NERDTree.ui.toggleIgnoreFilter()
endfunction

" FUNCTION: s:toggleShowBookmarks() {{{1
function! s:toggleShowBookmarks()
    call b:NERDTree.ui.toggleShowBookmarks()
endfunction

" FUNCTION: s:toggleShowFiles() {{{1
function! s:toggleShowFiles()
    call b:NERDTree.ui.toggleShowFiles()
endfunction

" FUNCTION: s:toggleShowHidden() {{{1
" toggles the display of hidden files
function! s:toggleShowHidden()
    call b:NERDTree.ui.toggleShowHidden()
endfunction

" FUNCTION: s:toggleZoom() {{{1
function! s:toggleZoom()
    call b:NERDTree.ui.toggleZoom()
endfunction

"FUNCTION: nerdtree#ui_glue#upDir(keepState) {{{1
"moves the tree up a level
"
"Args:
"keepState: 1 if the current root should be left open when the tree is
"re-rendered
function! nerdtree#ui_glue#upDir(keepState)
    let cwd = b:NERDTreeRoot.path.str({'format': 'UI'})
    if cwd ==# "/" || cwd =~# '^[^/]..$'
        call nerdtree#echo("already at top dir")
    else
        if !a:keepState
            call b:NERDTreeRoot.close()
        endif

        let oldRoot = b:NERDTreeRoot

        if empty(b:NERDTreeRoot.parent)
            let path = b:NERDTreeRoot.path.getParent()
            let newRoot = g:NERDTreeDirNode.New(path)
            call newRoot.open()
            call newRoot.transplantChild(b:NERDTreeRoot)
            let b:NERDTreeRoot = newRoot
        else
            let b:NERDTreeRoot = b:NERDTreeRoot.parent
        endif

        if g:NERDTreeChDirMode ==# 2
            call b:NERDTreeRoot.path.changeToDir()
        endif

        call b:NERDTree.render()
        call oldRoot.putCursorHere(0, 0)
    endif
endfunction

" FUNCTION: s:upDirCurrentRootOpen() {{{1
function! s:upDirCurrentRootOpen()
    call nerdtree#ui_glue#upDir(1)
endfunction

" FUNCTION: s:upDirCurrentRootClosed() {{{1
function! s:upDirCurrentRootClosed()
    call nerdtree#ui_glue#upDir(0)
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                                                                           autoload/nerdtree.vim                                                                               0000664 0001750 0001750 00000033577 12401543467 015740  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              if exists("g:loaded_nerdtree_autoload")
    finish
endif
let g:loaded_nerdtree_autoload = 1

function! nerdtree#version()
    return '4.2.0'
endfunction

" SECTION: General Functions {{{1
"============================================================

"FUNCTION: nerdtree#checkForBrowse(dir) {{{2
"inits a secondary nerd tree in the current buffer if appropriate
function! nerdtree#checkForBrowse(dir)
    if a:dir != '' && isdirectory(a:dir)
        call g:NERDTreeCreator.CreateSecondary(a:dir)
    endif
endfunction

" FUNCTION: nerdtree#completeBookmarks(A,L,P) {{{2
" completion function for the bookmark commands
function! nerdtree#completeBookmarks(A,L,P)
    return filter(g:NERDTreeBookmark.BookmarkNames(), 'v:val =~# "^' . a:A . '"')
endfunction

"FUNCTION: nerdtree#compareBookmarks(dir) {{{2
function! nerdtree#compareBookmarks(first, second)
    return a:first.compareTo(a:second)
endfunction

"FUNCTION: nerdtree#compareNodes(dir) {{{2
function! nerdtree#compareNodes(n1, n2)
    return a:n1.path.compareTo(a:n2.path)
endfunction

" FUNCTION: nerdtree#deprecated(func, [msg]) {{{2
" Issue a deprecation warning for a:func. If a second arg is given, use this
" as the deprecation message
function! nerdtree#deprecated(func, ...)
    let msg = a:0 ? a:func . ' ' . a:1 : a:func . ' is deprecated'

    if !exists('s:deprecationWarnings')
        let s:deprecationWarnings = {}
    endif
    if !has_key(s:deprecationWarnings, a:func)
        let s:deprecationWarnings[a:func] = 1
        echomsg msg
    endif
endfunction

" FUNCTION: nerdtree#exec(cmd) {{{2
" same as :exec cmd  but eventignore=all is set for the duration
function! nerdtree#exec(cmd)
    let old_ei = &ei
    set ei=all
    exec a:cmd
    let &ei = old_ei
endfunction

" FUNCTION: nerdtree#has_opt(options, name) {{{2
function! nerdtree#has_opt(options, name)
    return has_key(a:options, a:name) && a:options[a:name] == 1
endfunction

" FUNCTION: nerdtree#loadClassFiles() {{{2
function! nerdtree#loadClassFiles()
    runtime lib/nerdtree/path.vim
    runtime lib/nerdtree/menu_controller.vim
    runtime lib/nerdtree/menu_item.vim
    runtime lib/nerdtree/key_map.vim
    runtime lib/nerdtree/bookmark.vim
    runtime lib/nerdtree/tree_file_node.vim
    runtime lib/nerdtree/tree_dir_node.vim
    runtime lib/nerdtree/opener.vim
    runtime lib/nerdtree/creator.vim
    runtime lib/nerdtree/flag_set.vim
    runtime lib/nerdtree/nerdtree.vim
    runtime lib/nerdtree/ui.vim
    runtime lib/nerdtree/event.vim
    runtime lib/nerdtree/notifier.vim
endfunction

" FUNCTION: nerdtree#postSourceActions() {{{2
function! nerdtree#postSourceActions()
    call g:NERDTreeBookmark.CacheBookmarks(0)
    call nerdtree#ui_glue#createDefaultBindings()

    "load all nerdtree plugins
    runtime! nerdtree_plugin/**/*.vim
endfunction

"FUNCTION: nerdtree#runningWindows(dir) {{{2
function! nerdtree#runningWindows()
    return has("win16") || has("win32") || has("win64")
endfunction

"FUNCTION: nerdtree#treeMarkupReg(dir) {{{2
function! nerdtree#treeMarkupReg()
    if g:NERDTreeDirArrows
        return '^\([▾▸] \| \+[▾▸] \| \+\)'
    endif

    return '^[ `|]*[\-+~]'
endfunction

"FUNCTION: nerdtree#treeUpDirLine(dir) {{{2
function! nerdtree#treeUpDirLine()
    return '.. (up a dir)'
endfunction

"FUNCTION: nerdtree#treeWid(dir) {{{2
function! nerdtree#treeWid()
    return 2
endfunction

" SECTION: View Functions {{{1
"============================================================

"FUNCTION: nerdtree#closeTree() {{{2
"Closes the primary NERD tree window for this tab
function! nerdtree#closeTree()
    if !nerdtree#isTreeOpen()
        throw "NERDTree.NoTreeFoundError: no NERDTree is open"
    endif

    if winnr("$") != 1
        if winnr() == nerdtree#getTreeWinNum()
            call nerdtree#exec("wincmd p")
            let bufnr = bufnr("")
            call nerdtree#exec("wincmd p")
        else
            let bufnr = bufnr("")
        endif

        call nerdtree#exec(nerdtree#getTreeWinNum() . " wincmd w")
        close
        call nerdtree#exec(bufwinnr(bufnr) . " wincmd w")
    else
        close
    endif
endfunction

"FUNCTION: nerdtree#closeTreeIfOpen() {{{2
"Closes the NERD tree window if it is open
function! nerdtree#closeTreeIfOpen()
   if nerdtree#isTreeOpen()
      call nerdtree#closeTree()
   endif
endfunction

"FUNCTION: nerdtree#closeTreeIfQuitOnOpen() {{{2
"Closes the NERD tree window if the close on open option is set
function! nerdtree#closeTreeIfQuitOnOpen()
    if g:NERDTreeQuitOnOpen && nerdtree#isTreeOpen()
        call nerdtree#closeTree()
    endif
endfunction

"FUNCTION: nerdtree#dumpHelp  {{{2
"prints out the quick help
function! nerdtree#dumpHelp()
    let old_h = @h
    if b:treeShowHelp ==# 1
        let @h=   "\" NERD tree (" . nerdtree#version() . ") quickhelp~\n"
        let @h=@h."\" ============================\n"
        let @h=@h."\" File node mappings~\n"
        let @h=@h."\" ". (g:NERDTreeMouseMode ==# 3 ? "single" : "double") ."-click,\n"
        let @h=@h."\" <CR>,\n"
        if b:NERDTreeType ==# "primary"
            let @h=@h."\" ". g:NERDTreeMapActivateNode .": open in prev window\n"
        else
            let @h=@h."\" ". g:NERDTreeMapActivateNode .": open in current window\n"
        endif
        if b:NERDTreeType ==# "primary"
            let @h=@h."\" ". g:NERDTreeMapPreview .": preview\n"
        endif
        let @h=@h."\" ". g:NERDTreeMapOpenInTab.": open in new tab\n"
        let @h=@h."\" ". g:NERDTreeMapOpenInTabSilent .": open in new tab silently\n"
        let @h=@h."\" middle-click,\n"
        let @h=@h."\" ". g:NERDTreeMapOpenSplit .": open split\n"
        let @h=@h."\" ". g:NERDTreeMapPreviewSplit .": preview split\n"
        let @h=@h."\" ". g:NERDTreeMapOpenVSplit .": open vsplit\n"
        let @h=@h."\" ". g:NERDTreeMapPreviewVSplit .": preview vsplit\n"

        let @h=@h."\"\n\" ----------------------------\n"
        let @h=@h."\" Directory node mappings~\n"
        let @h=@h."\" ". (g:NERDTreeMouseMode ==# 1 ? "double" : "single") ."-click,\n"
        let @h=@h."\" ". g:NERDTreeMapActivateNode .": open & close node\n"
        let @h=@h."\" ". g:NERDTreeMapOpenRecursively .": recursively open node\n"
        let @h=@h."\" ". g:NERDTreeMapCloseDir .": close parent of node\n"
        let @h=@h."\" ". g:NERDTreeMapCloseChildren .": close all child nodes of\n"
        let @h=@h."\"    current node recursively\n"
        let @h=@h."\" middle-click,\n"
        let @h=@h."\" ". g:NERDTreeMapOpenExpl.": explore selected dir\n"

        let @h=@h."\"\n\" ----------------------------\n"
        let @h=@h."\" Bookmark table mappings~\n"
        let @h=@h."\" double-click,\n"
        let @h=@h."\" ". g:NERDTreeMapActivateNode .": open bookmark\n"
        let @h=@h."\" ". g:NERDTreeMapOpenInTab.": open in new tab\n"
        let @h=@h."\" ". g:NERDTreeMapOpenInTabSilent .": open in new tab silently\n"
        let @h=@h."\" ". g:NERDTreeMapDeleteBookmark .": delete bookmark\n"

        let @h=@h."\"\n\" ----------------------------\n"
        let @h=@h."\" Tree navigation mappings~\n"
        let @h=@h."\" ". g:NERDTreeMapJumpRoot .": go to root\n"
        let @h=@h."\" ". g:NERDTreeMapJumpParent .": go to parent\n"
        let @h=@h."\" ". g:NERDTreeMapJumpFirstChild  .": go to first child\n"
        let @h=@h."\" ". g:NERDTreeMapJumpLastChild   .": go to last child\n"
        let @h=@h."\" ". g:NERDTreeMapJumpNextSibling .": go to next sibling\n"
        let @h=@h."\" ". g:NERDTreeMapJumpPrevSibling .": go to prev sibling\n"

        let @h=@h."\"\n\" ----------------------------\n"
        let @h=@h."\" Filesystem mappings~\n"
        let @h=@h."\" ". g:NERDTreeMapChangeRoot .": change tree root to the\n"
        let @h=@h."\"    selected dir\n"
        let @h=@h."\" ". g:NERDTreeMapUpdir .": move tree root up a dir\n"
        let @h=@h."\" ". g:NERDTreeMapUpdirKeepOpen .": move tree root up a dir\n"
        let @h=@h."\"    but leave old root open\n"
        let @h=@h."\" ". g:NERDTreeMapRefresh .": refresh cursor dir\n"
        let @h=@h."\" ". g:NERDTreeMapRefreshRoot .": refresh current root\n"
        let @h=@h."\" ". g:NERDTreeMapMenu .": Show menu\n"
        let @h=@h."\" ". g:NERDTreeMapChdir .":change the CWD to the\n"
        let @h=@h."\"    selected dir\n"
        let @h=@h."\" ". g:NERDTreeMapCWD .":change tree root to CWD\n"

        let @h=@h."\"\n\" ----------------------------\n"
        let @h=@h."\" Tree filtering mappings~\n"
        let @h=@h."\" ". g:NERDTreeMapToggleHidden .": hidden files (" . (b:NERDTreeShowHidden ? "on" : "off") . ")\n"
        let @h=@h."\" ". g:NERDTreeMapToggleFilters .": file filters (" . (b:NERDTreeIgnoreEnabled ? "on" : "off") . ")\n"
        let @h=@h."\" ". g:NERDTreeMapToggleFiles .": files (" . (b:NERDTreeShowFiles ? "on" : "off") . ")\n"
        let @h=@h."\" ". g:NERDTreeMapToggleBookmarks .": bookmarks (" . (b:NERDTreeShowBookmarks ? "on" : "off") . ")\n"

        "add quickhelp entries for each custom key map
        let @h=@h."\"\n\" ----------------------------\n"
        let @h=@h."\" Custom mappings~\n"
        for i in g:NERDTreeKeyMap.All()
            if !empty(i.quickhelpText)
                let @h=@h."\" ". i.key .": ". i.quickhelpText ."\n"
            endif
        endfor

        let @h=@h."\"\n\" ----------------------------\n"
        let @h=@h."\" Other mappings~\n"
        let @h=@h."\" ". g:NERDTreeMapQuit .": Close the NERDTree window\n"
        let @h=@h."\" ". g:NERDTreeMapToggleZoom .": Zoom (maximize-minimize)\n"
        let @h=@h."\"    the NERDTree window\n"
        let @h=@h."\" ". g:NERDTreeMapHelp .": toggle help\n"
        let @h=@h."\"\n\" ----------------------------\n"
        let @h=@h."\" Bookmark commands~\n"
        let @h=@h."\" :Bookmark [<name>]\n"
        let @h=@h."\" :BookmarkToRoot <name>\n"
        let @h=@h."\" :RevealBookmark <name>\n"
        let @h=@h."\" :OpenBookmark <name>\n"
        let @h=@h."\" :ClearBookmarks [<names>]\n"
        let @h=@h."\" :ClearAllBookmarks\n"
        silent! put h
    elseif g:NERDTreeMinimalUI == 0
        let @h="\" Press ". g:NERDTreeMapHelp ." for help\n"
        silent! put h
    endif

    let @h = old_h
endfunction

"FUNCTION: nerdtree#echo  {{{2
"A wrapper for :echo. Appends 'NERDTree:' on the front of all messages
"
"Args:
"msg: the message to echo
function! nerdtree#echo(msg)
    redraw
    echomsg "NERDTree: " . a:msg
endfunction

"FUNCTION: nerdtree#echoError {{{2
"Wrapper for nerdtree#echo, sets the message type to errormsg for this message
"Args:
"msg: the message to echo
function! nerdtree#echoError(msg)
    echohl errormsg
    call nerdtree#echo(a:msg)
    echohl normal
endfunction

"FUNCTION: nerdtree#echoWarning {{{2
"Wrapper for nerdtree#echo, sets the message type to warningmsg for this message
"Args:
"msg: the message to echo
function! nerdtree#echoWarning(msg)
    echohl warningmsg
    call nerdtree#echo(a:msg)
    echohl normal
endfunction

"FUNCTION: nerdtree#getTreeWinNum() {{{2
"gets the nerd tree window number for this tab
function! nerdtree#getTreeWinNum()
    if exists("t:NERDTreeBufName")
        return bufwinnr(t:NERDTreeBufName)
    else
        return -1
    endif
endfunction

"FUNCTION: nerdtree#isTreeOpen() {{{2
function! nerdtree#isTreeOpen()
    return nerdtree#getTreeWinNum() != -1
endfunction

"FUNCTION: nerdtree#putCursorOnBookmarkTable(){{{2
"Places the cursor at the top of the bookmarks table
function! nerdtree#putCursorOnBookmarkTable()
    if !b:NERDTreeShowBookmarks
        throw "NERDTree.IllegalOperationError: cant find bookmark table, bookmarks arent active"
    endif

    if g:NERDTreeMinimalUI
        return cursor(1, 2)
    endif

    let rootNodeLine = b:NERDTree.ui.getRootLineNum()

    let line = 1
    while getline(line) !~# '^>-\+Bookmarks-\+$'
        let line = line + 1
        if line >= rootNodeLine
            throw "NERDTree.BookmarkTableNotFoundError: didnt find the bookmarks table"
        endif
    endwhile
    call cursor(line, 2)
endfunction

"FUNCTION: nerdtree#putCursorInTreeWin(){{{2
"Places the cursor in the nerd tree window
function! nerdtree#putCursorInTreeWin()
    if !nerdtree#isTreeOpen()
        throw "NERDTree.InvalidOperationError: cant put cursor in NERD tree window, no window exists"
    endif

    call nerdtree#exec(nerdtree#getTreeWinNum() . "wincmd w")
endfunction

"FUNCTION: nerdtree#renderBookmarks {{{2
function! nerdtree#renderBookmarks()

    if g:NERDTreeMinimalUI == 0
        call setline(line(".")+1, ">----------Bookmarks----------")
        call cursor(line(".")+1, col("."))
    endif

    for i in g:NERDTreeBookmark.Bookmarks()
        call setline(line(".")+1, i.str())
        call cursor(line(".")+1, col("."))
    endfor

    call setline(line(".")+1, '')
    call cursor(line(".")+1, col("."))
endfunction

"FUNCTION: nerdtree#renderView {{{2
function! nerdtree#renderView()
    call b:NERDTree.render()
endfunction
"
"FUNCTION: nerdtree#stripMarkupFromLine(line, removeLeadingSpaces){{{2
"returns the given line with all the tree parts stripped off
"
"Args:
"line: the subject line
"removeLeadingSpaces: 1 if leading spaces are to be removed (leading spaces =
"any spaces before the actual text of the node)
function! nerdtree#stripMarkupFromLine(line, removeLeadingSpaces)
    let line = a:line
    "remove the tree parts and the leading space
    let line = substitute (line, nerdtree#treeMarkupReg(),"","")

    "strip off any read only flag
    let line = substitute (line, ' \[RO\]', "","")

    "strip off any bookmark flags
    let line = substitute (line, ' {[^}]*}', "","")

    "strip off any executable flags
    let line = substitute (line, '*\ze\($\| \)', "","")

    "strip off any generic flags
    let line = substitute (line, '\[[^]]*\]', "","")

    let wasdir = 0
    if line =~# '/$'
        let wasdir = 1
    endif
    let line = substitute (line,' -> .*',"","") " remove link to
    if wasdir ==# 1
        let line = substitute (line, '/\?$', '/', "")
    endif

    if a:removeLeadingSpaces
        let line = substitute (line, '^ *', '', '')
    endif

    return line
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                 doc/                                                                                                0000775 0001750 0001750 00000000000 12401544153 012322  5                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              doc/srcexpl.txt                                                                                     0000664 0001750 0001750 00000034355 12401543477 014565  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              *srcexpl.txt*	A Source code Explorer which works like the context window of "Source Insight"

Version: 5.3
Author : Wenlong Che <wenlong.che@gmail.com>
         Jonathan Lai <laiks.jonathan@gmail.com>
License: GNU General Public License {{{
    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
}}}

CONTENTS						    *srcexpl-contents*
    Introduction				    |srcexpl-introduction|
      Features					      |srcexpl-features|
    Install					    |srcexpl-install|
    Interface					    |srcexpl-interface|
      Commands					      |srcexpl-commands|
      Variables					      |srcexpl-variables|
      Key Mappings				      |srcexpl-key-mappings|
    Examples					    |srcexpl-examples|
    Tips					    |srcexpl-tips|
    Changelog					    |srcexpl-changelog|

==============================================================================
INTRODUCTION						*srcexpl-introduction*

SrcExpl (Source Explorer) is a source code explorer that provides context for
the currently selected keyword by displaying the function or type definition
or declaration in a separate window. This plugin aims to recreate the context
window available in the IDE known as "Source Insight".

The behaviour of the Source Explorer window is similar to that of "Source
Insight". Placing your cursor on a function name in Normal Mode will cause its
definition to be displayed in the Source Explorer window. Double-clicking the
definition will cause the edit window to jump to the definition. In addition,
listing multiple definitions and jumping work in a similar fashion to
"Source Insight".

Source Explorer uses ctags to track keywords and can automatically create and
update the generated tags file for you.

Source Explorer is designed to work with other plugins like 'The NERD tree'
and 'taglist' to further recreate a "Source Insight"-like environment or to
work in your own configuration.

------------------------------------------------------------------------------
FEATURES						    *srcexpl-features*

    * Display definitions and declarations of various languages supported
      by ctags and various types including functions, macros, structures,
      arrays, methods, classes, and variables.
    * Jump to the displayed context in the Source Explorer window using the
    * mouse or your own key mapping.
    * Jump back from the context location with the mouse context menu or your
      own key mapping.
    * Automatically list all definitions if multiple definitions for a keyword
      is found.
    * Automatically create and update the tags file.

==============================================================================
INSTALL							     *srcexpl-install*

1. Ensure ctags is installed on your system and that VIM can use it.
2. Place the Source Explorer files in your Vim directory (such as ~/.vim) or
have it installed by a bundle manager like Vundle or NeoBundle.
3. Open the Source Explorer window with |:SrcExpl| or |:SrcExplToggle| or map
these commands to keys in your .vimrc.

							   *srcexpl-uninstall*
To uninstall Source Explorer, simply delete the Source Explorer files and
remove any related lines in your .vimrc. You may remove any generated tags
files in your projects or keep them for further use as they can be used by vim
without Source Explorer.

==============================================================================
INTERFACE						   *srcexpl-interface*

------------------------------------------------------------------------------
COMMANDS						    *srcexpl-commands*

:SrcExpl							    *:SrcExpl*
	Opens the Source Explorer window.

:SrcExplClose						       *:SrcExplClose*
	Closes the Source Explorer window.

:SrcExplToggle						      *:SrcExplToggle*
	Toggles the Source Explorer window on and off.

------------------------------------------------------------------------------
VARIABLES						   *srcexpl-variables*

g:SrcExpl_winHeight					 *g:SrcExpl_winHeight*
	This controls the default height of the Source Explorer window when it
	is started.

	Default: 8

g:SrcExpl_refreshTime				       *g:SrcExpl_refreshTime*
	This controls how often in milliseconds the Source Explorer window is
	updated.
        You must keep the cursor on the desired word for this period of time
        for SrcExpl to display its definition.
	Note: This sets the |updatetime| setting which also controls how often
	the swap file will be written to disk.

	Default: 100

g:SrcExpl_pluginList					*g:SrcExpl_pluginList*
	This list contains the names of buffers to ignore when displaying
	context information. At the very minimum it must include itself.
>
	" Minimum Plugin List
	let g:SrcExpl_pluginList = [ "Source_Explorer" ]
<
	You should add the name of each buffer every other plugin you have uses
	to avoid conflicts and compatibility issues.
>
	" Example
	let g:SrcExpl_pluginList = [
		    \ "__Tag_List__",
		    \ "_NERD_tree_",
		    \ "*unite*"
		    \ ]
<

	Default: [ "__Tag_List__", "_NERD_tree_" ]

g:SrcExpl_searchLocalDef			    *g:SrcExpl_searchLocalDef*
	This enables local definition searching. Source Explorer can use vim's
	local definition search in addition to ctags to find definitions.
	However, this is not guaranteed to work. See the vim documentation for
	|gd| for more details.

	Default: 1

g:SrcExpl_isUpdateTags				      *g:SrcExpl_isUpdateTags*
	This enables automatic tags file updating whenever Source Explorer is
	opened.
	If a tags files is not found, you will be asked if you wish to create
	a tags file in the current directory.
	The command used to create or update the tags is set by
	|g:SrcExpl_updateTagsCmd|.

	Default: 1

g:SrcExpl_updateTagsCmd				     *g:SrcExpl_updateTagsCmd*
	The command used to create or update the tags file. This is run when
	Source Explorer is opened if |g:SrcExpl_isUpdateTags| is set or
	whenever |g:SrcExpl_updateTagsKey| is pressed. The command will run in
	the current directory.

	Default: "ctags --sort=foldcase -R ."

------------------------------------------------------------------------------
KEY MAPPINGS						*srcexpl-key-mappings*

g:SrcExpl_jumpKey					   *g:SrcExpl_jumpKey*
	Set this variable to the key you want to use to jump to the highlighted
	definition in the Source Explorer window.
	Note: This mapping only works in the Source Explorer window.
	Note: Source Explorer uses its own mark list and normal mark commands
	will not work.

	Default: '<CR>'

g:SrcExpl_gobackKey					 *g:SrcExpl_gobackKey*
	Set this variable to the key you want to use to go back to the previous
	location after jumping to a definition.
	Note: Source Explorer uses its own mark list and normal mark commands
	will not work.

	Default: '<SPACE>'

g:SrcExpl_updateTagsKey				     *g:SrcExpl_updateTagsKey*
	Set this variable to the key you want to use to force a update of the
	tags file.

	Default: ''

g:SrcExpl_prevDefKey				        *g:SrcExpl_prevDefKey*
	Set this variable to the key you want to use to display the previous
	definition in the jump list.

	Default: ''

g:SrcExpl_nextDefKey				        *g:SrcExpl_nextDefKey*
	Set this variable to the key you want to use to display the next
	definition in the jump list.

	Default: ''

==============================================================================
EXAMPLES						    *srcexpl-examples*
>
 " // The switch of the Source Explorer
 nmap <F8> :SrcExplToggle<CR>

 " // Set the height of Source Explorer window
 let g:SrcExpl_winHeight = 8

 " // Set 100 ms for refreshing the Source Explorer
 let g:SrcExpl_refreshTime = 100

 " // Set "Enter" key to jump into the exact definition context
 let g:SrcExpl_jumpKey = "<ENTER>"

 " // Set "Space" key for back from the definition context
 let g:SrcExpl_gobackKey = "<SPACE>"

 " // In order to avoid conflicts, the Source Explorer should know what plugins
 " // except itself are using buffers. And you need add their buffer names into
 " // below listaccording to the command ":buffers!"
 let g:SrcExpl_pluginList = [
         \ "__Tag_List__",
         \ "_NERD_tree_"
     \ ]

 " // Enable/Disable the local definition searching, and note that this is not
 " // guaranteed to work, the Source Explorer doesn't check the syntax for now.
 " // It only searches for a match with the keyword according to command 'gd'
 let g:SrcExpl_searchLocalDef = 1

 " // Do not let the Source Explorer update the tags file when opening
 let g:SrcExpl_isUpdateTags = 0

 " // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
 " // create/update a tags file
 let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

 " // Set "<F12>" key for updating the tags file artificially
 let g:SrcExpl_updateTagsKey = "<F12>"

 " // Set "<F3>" key for displaying the previous definition in the jump list
 let g:SrcExpl_prevDefKey = "<F3>"

 " // Set "<F4>" key for displaying the next definition in the jump list
 let g:SrcExpl_nextDefKey = "<F4>"
<
==============================================================================
TIPS								*srcexpl-tips*

1. Ensure that there is only one tags file in your project PATH or you Source
Explorer will show duplicates of every definition.
For example: There are two tags in the 'your_project' directory, so we will
delete the excess 'tags' files in the 'sub_directory'.
>
 [chewenlong@localhost ~]$ cd your_project/
 [chewenlong@localhost your_project]$ pwd
 /home/chewenlong/your_project
 [chewenlong@localhost your_project]$ ls
 bar.c  sub_directory  tags
 [chewenlong@localhost your_project]$ cd sub_directory/
 [chewenlong@localhost sub_directory]$ ls
 foo.c  tags
 [chewenlong@localhost sub_directory]$ rm -rf tags
 [chewenlong@localhost sub_directory]$ ls
 foo.c
 [chewenlong@localhost sub_directory]$ cd ..
 [chewenlong@localhost your_project]$ ls
 bar.c  sub_directory  tags
 [chewenlong@localhost your_project]$ vim bar.c
<

							*srcexpl-line-endings*
2. Ensure that all the files you are exploring are using unix line endings. If
they are not, a '^M' will be displayed at the end of the line and Source
Explorer will jump to incorrect locations.

						    *srcexpl-console-mappings*
3. If you are using Source Explorer in a UNIX console, these are my suggested
key mappings for jumping between windows and using Source Explorer:
>
 nmap <C-H> <C-W>h
 nmap <C-J> <C-W>j
 nmap <C-K> <C-W>k
 nmap <C-L> <C-W>l

 nmap <C-I> <C-W>j:call g:SrcExpl_Jump()<CR>
 nmap <C-O> :call g:SrcExpl_GoBack()<CR>
<

							     *srcexpl-trinity*
4. If you want to set up vim to work more like Source Insight, you can try a
vim plugin named Trinity (trinity.vim) available at:
http://www.vim.org/scripts/script.php?script_id=2347

The Trinity plugin manages Source Explorer, Taglist and NERD Tree. The below
shows my work platform with Trinity.
>
 +----------------------------------------------------------------------------+
 | File  Edit  Tools  Syntax  Buffers  Window  Help                           |
 +----------------+-----------------------------------------+-----------------+
 |-demo.c---------|                                         |-/home/myprj/----|
 |function        | 1 void foo(void)     /* function 1 */   ||~ src/          |
 |  foo           | 2 {                                     || `-demo.c       |
 |  bar           | 3 }                                     |`-tags           |
 |                | 4 void bar(void)     /* function 2 */   |                 |
 |~ .----------.  | 5 {                                     |~ .-----------.  |
 |~ | Tag List |\ | 6 }        .-------------.              |~ | NERD Tree |\ |
 |~ .----------. ||~           | Edit Window |\             |~ .-----------. ||
 |~ \___________\||~           .-------------. |            |~ \____________\||
 |~               |~           \______________\|            |~                |
 +-__Tag_List__---+-demo.c----------------------------------+-_NERD_tree_-----+
 |Source Explorer v5.3           .-----------------.                          |
 |~                              | Source Explorer |\                         |
 |~                              .-----------------. |                        |
 |~                              \__________________\|                        |
 |-Source_Explorer------------------------------------------------------------|
 |:TrinityToggleAll                                                           |
 +----------------------------------------------------------------------------+
<

							      *srcexpl-github*
							 *srcexpl-screenshots*
5. Screenshots are available at: http://srcexpl.blogspot.com/
The official git repository is on github at:
https://github.com/wesleyche/SrcExpl

==============================================================================
CHANGELOG						   *srcexpl-changelog*

5.3
- Fix a bug when operating the Quickfix window after closing the Source Explorer window.
- Handle the case when the cursor is located at the Quickfix window as same as other
  external plugins.

5.2
- Add the fast way for displaying the previous or next definition in the jump list.
  The new feature is similar with the commands called cprev and cnext for operating
  the Quickfix list. You can add below config lines in your .vimrc or just update your
  Trinity to v2.1.
    1. " // Set "<F3>" key for displaying the previous definition in the jump list
       let g:SrcExpl_prevDefKey = "<F3>"
    2. " // Set "<F4>" key for displaying the next definition in the jump list
       let g:SrcExpl_nextDefKey = "<F4>"
- Fix a bug when clicking the default prompt line in the Source Explorer window.

5.1
- Added two APIs for serving other plugins:
    1. SrcExpl_GetWin(), getting the Source Explorer window number for those plugins
       based on multiple windows.
    2. SrcExpl_GetVer(), getting the Source Explorer version for the forward compatibility.
- Added debug/logging functions for the internal development.

5.0
- Replaced use of preview window with a named buffer.
- Moved to github.
- Added documentation.

==============================================================================
vim:tw=78:ts=8:noet:ft=help:
                                                                                                                                                                                                                                                                                   doc/taglist.txt                                                                                     0000755 0001750 0001750 00000210533 12113117060 014530  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              *taglist.txt*	Plugin for browsing source code

Author: Yegappan Lakshmanan  (yegappan AT yahoo DOT com)
For Vim version 6.0 and above
Last change: 2013 Feburary 26

1. Overview 					|taglist-intro|
2. Taglist on the internet			|taglist-internet|
3. Requirements					|taglist-requirements|
4. Installation 				|taglist-install|
5. Usage 					|taglist-using|
6. Options 					|taglist-options|
7. Commands 					|taglist-commands|
8. Global functions 				|taglist-functions|
9. Extending 					|taglist-extend|
10. FAQ 					|taglist-faq|
11. License 					|taglist-license|
12. Todo					|taglist-todo|

==============================================================================
						*taglist-intro*
1. Overview~

The "Tag List" plugin is a source code browser plugin for Vim. This plugin
allows you to efficiently browse through source code files for different
programming languages. The "Tag List" plugin provides the following features:

    * Displays the tags (functions, classes, structures, variables, etc.)
      defined in a file in a vertically or horizontally split Vim window.
    * In GUI Vim, optionally displays the tags in the Tags drop-down menu and
      in the popup menu.
    * Automatically updates the taglist window as you switch between
      files/buffers. As you open new files, the tags defined in the new files
      are added to the existing file list and the tags defined in all the
      files are displayed grouped by the filename.
    * When a tag name is selected from the taglist window, positions the
      cursor at the definition of the tag in the source file.
    * Automatically highlights the current tag name.
    * Groups the tags by their type and displays them in a foldable tree.
    * Can display the prototype and scope of a tag.
    * Can optionally display the tag prototype instead of the tag name in the
      taglist window.
    * The tag list can be sorted either by name or by chronological order.
    * Supports the following language files: Assembly, ASP, Awk, Beta, C,
      C++, C#, Cobol, Eiffel, Erlang, Fortran, HTML, Java, Javascript, Lisp,
      Lua, Make, Pascal, Perl, PHP, Python, Rexx, Ruby, Scheme, Shell, Slang,
      SML, Sql, TCL, Verilog, Vim and Yacc.
    * Can be easily extended to support new languages. Support for
      existing languages can be modified easily.
    * Provides functions to display the current tag name in the Vim status
      line or the window title bar.
    * The list of tags and files in the taglist can be saved and
      restored across Vim sessions.
    * Provides commands to get the name and prototype of the current tag.
    * Runs in both console/terminal and GUI versions of Vim.
    * Works with the winmanager plugin. Using the winmanager plugin, you
      can use Vim plugins like the file explorer, buffer explorer and the
      taglist plugin at the same time like an IDE.
    * Can be used in both Unix and MS-Windows systems.

==============================================================================
						*taglist-internet*
2. Taglist on the internet~

The home page of the taglist plugin is at:
>
	http://vim-taglist.sourceforge.net/
<
You can subscribe to the taglist mailing list to post your questions or
suggestions for improvement or to send bug reports. Visit the following page
for subscribing to the mailing list:
>
	http://groups.yahoo.com/group/taglist
<
==============================================================================
						*taglist-requirements*
3. Requirements~

The taglist plugin requires the following:

    * Vim version 6.0 and above
    * Exuberant ctags 5.0 and above

The taglist plugin will work on all the platforms where the exuberant ctags
utility and Vim are supported (this includes MS-Windows and Unix based
systems).

The taglist plugin relies on the exuberant ctags utility to dynamically
generate the tag listing.  The exuberant ctags utility must be installed in
your system to use this plugin.  The exuberant ctags utility is shipped with
most of the Linux distributions.  You can download the exuberant ctags utility
from
>
	http://ctags.sourceforge.net
<
The taglist plugin doesn't use or create a tags file and there is no need to
create a tags file to use this plugin. The taglist plugin will not work with
the GNU ctags or the Unix ctags utility.

This plugin relies on the Vim "filetype" detection mechanism to determine the
type of the current file. You have to turn on the Vim filetype detection by
adding the following line to your .vimrc file:
>
	filetype on
<
The taglist plugin will not work if you run Vim in the restricted mode (using
the -Z command-line argument).

The taglist plugin uses the Vim system() function to invoke the exuberant
ctags utility. If Vim is compiled without the system() function then you
cannot use the taglist plugin. Some of the Linux distributions (Suse) compile
Vim without the system() function for security reasons.

==============================================================================
						*taglist-install*
4. Installation~

1. Download the taglist.zip file and unzip the files to the $HOME/.vim or the
   $HOME/vimfiles or the $VIM/vimfiles directory. After this step, you should
   have the following two files (the directory structure should be preserved):

	plugin/taglist.vim - main taglist plugin file
	doc/taglist.txt    - documentation (help) file

   Refer to the |add-plugin|and |'runtimepath'| Vim help pages for more
   details about installing Vim plugins.
2. Change to the $HOME/.vim/doc or $HOME/vimfiles/doc or $VIM/vimfiles/doc
   directory, start Vim and run the ":helptags ." command to process the
   taglist help file. Without this step, you cannot jump to the taglist help
   topics.
3. If the exuberant ctags utility is not present in one of the directories in
   the PATH environment variable, then set the 'Tlist_Ctags_Cmd' variable to
   point to the location of the exuberant ctags utility (not to the directory)
   in the .vimrc file.
4. If you are running a terminal/console version of Vim and the terminal
   doesn't support changing the window width then set the
   'Tlist_Inc_Winwidth' variable to 0 in the .vimrc file.
5. Restart Vim.
6. You can now use the ":TlistToggle" command to open/close the taglist
   window. You can use the ":help taglist" command to get more information
   about using the taglist plugin.

To uninstall the taglist plugin, remove the plugin/taglist.vim and
doc/taglist.txt files from the $HOME/.vim or $HOME/vimfiles directory.

==============================================================================
						*taglist-using*
5. Usage~

The taglist plugin can be used in several different ways.

1. You can keep the taglist window open during the entire editing session. On
   opening the taglist window, the tags defined in all the files in the Vim
   buffer list will be displayed in the taglist window. As you edit files, the
   tags defined in them will be added to the taglist window. You can select a
   tag from the taglist window and jump to it. The current tag will be
   highlighted in the taglist window. You can close the taglist window when
   you no longer need the window.
2. You can configure the taglist plugin to process the tags defined in all the
   edited files always. In this configuration, even if the taglist window is
   closed and the taglist menu is not displayed, the taglist plugin will
   processes the tags defined in newly edited files. You can then open the
   taglist window only when you need to select a tag and then automatically
   close the taglist window after selecting the tag.
3. You can configure the taglist plugin to display only the tags defined in
   the current file in the taglist window. By default, the taglist plugin
   displays the tags defined in all the files in the Vim buffer list. As you
   switch between files, the taglist window will be refreshed to display only
   the tags defined in the current file.
4. In GUI Vim, you can use the Tags pull-down and popup menu created by the
   taglist plugin to display the tags defined in the current file and select a
   tag to jump to it. You can use the menu without opening the taglist window.
   By default, the Tags menu is disabled.
5. You can configure the taglist plugin to display the name of the current tag
   in the Vim window status line or in the Vim window title bar. For this to
   work without the taglist window or menu, you need to configure the taglist
   plugin to process the tags defined in a file always.
6. You can save the tags defined in multiple files to a taglist session file
   and load it when needed. You can also configure the taglist plugin to not
   update the taglist window when editing new files. You can then manually add
   files to the taglist window.

Opening the taglist window~
You can open the taglist window using the ":TlistOpen" or the ":TlistToggle"
commands. The ":TlistOpen" command opens the taglist window and jumps to it.
The ":TlistToggle" command opens or closes (toggle) the taglist window and the
cursor remains in the current window. If the 'Tlist_GainFocus_On_ToggleOpen'
variable is set to 1, then the ":TlistToggle" command opens the taglist window
and moves the cursor to the taglist window.

You can map a key to invoke these commands. For example, the following command
creates a normal mode mapping for the <F8> key to toggle the taglist window.
>
	nnoremap <silent> <F8> :TlistToggle<CR>
<
Add the above mapping to your ~/.vimrc or $HOME/_vimrc file.

To automatically open the taglist window on Vim startup, set the
'Tlist_Auto_Open' variable to 1.

You can also open the taglist window on startup using the following command
line:
>
	$ vim +TlistOpen
<
Closing the taglist window~
You can close the taglist window from the taglist window by pressing 'q' or
using the Vim ":q" command. You can also use any of the Vim window commands to
close the taglist window. Invoking the ":TlistToggle" command when the taglist
window is opened, closes the taglist window. You can also use the
":TlistClose" command to close the taglist window.

To automatically close the taglist window when a tag or file is selected, you
can set the 'Tlist_Close_On_Select' variable to 1.  To exit Vim when only the
taglist window is present, set the 'Tlist_Exit_OnlyWindow' variable to 1.

Jumping to a tag or a file~
You can select a tag in the taglist window either by pressing the <Enter> key
or by double clicking the tag name using the mouse. To jump to a tag on a
single mouse click set the 'Tlist_Use_SingleClick' variable to 1.

If the selected file is already opened in a window, then the cursor is moved
to that window. If the file is not currently opened in a window then the file
is opened in the window used by the taglist plugin to show the previously
selected file. If there are no usable windows, then the file is opened in a
new window.  The file is not opened in special windows like the quickfix
window, preview window and windows containing buffer with the 'buftype' option
set.

To jump to the tag in a new window, press the 'o' key. To open the file in the
previous window (Ctrl-W_p) use the 'P' key. You can press the 'p' key to jump
to the tag but still keep the cursor in the taglist window (preview).

To open the selected file in a tab, use the 't' key.  If the file is already
present in a tab then the cursor is moved to that tab otherwise the file is
opened in a new tab. To jump to a tag in a new tab press Ctrl-t.  The taglist
window is automatically opened in the newly created tab.

Instead of jumping to a tag, you can open a file by pressing the <Enter> key
or by double clicking the file name using the mouse.

In the taglist window, you can use the [[ or <Backspace> key to jump to the
beginning of the previous file. You can use the ]] or <Tab> key to jump to the
beginning of the next file. When you reach the first or last file, the search
wraps around and the jumps to the next/previous file.

Highlighting the current tag~
The taglist plugin automatically highlights the name of the current tag in the
taglist window. The Vim |CursorHold| autocmd event is used for this. If the
current tag name is not visible in the taglist window, then the taglist window
contents are scrolled to make that tag name visible. You can also use the
":TlistHighlightTag" command to force the highlighting of the current tag.

The tag name is highlighted if no activity is performed for |'updatetime'|
milliseconds. The default value for this Vim option is 4 seconds. To avoid
unexpected problems, you should not set the |'updatetime'| option to a very
low value.

To disable the automatic highlighting of the current tag name in the taglist
window, set the 'Tlist_Auto_Highlight_Tag' variable to zero.

When entering a Vim buffer/window, the taglist plugin automatically highlights
the current tag in that buffer/window.  If you like to disable the automatic
highlighting of the current tag when entering a buffer, set the
'Tlist_Highlight_Tag_On_BufEnter' variable to zero.

Adding files to the taglist~
When the taglist window is opened, all the files in the Vim buffer list are
processed and the supported files are added to the taglist.  When you edit a
file in Vim, the taglist plugin automatically processes this file and adds it
to the taglist. If you close the taglist window, the tag information in the
taglist is retained.

To process files even when the taglist window is not open, set the
'Tlist_Process_File_Always' variable to 1.

You can manually add multiple files to the taglist without opening them using
the ":TlistAddFiles" and the ":TlistAddFilesRecursive" commands.

For example, to add all the C files in the /my/project/dir directory to the
taglist, you can use the following command:
>
	:TlistAddFiles /my/project/dir/*.c
<
Note that when adding several files with a large number of tags or a large
number of files, it will take several seconds to several minutes for the
taglist plugin to process all the files. You should not interrupt the taglist
plugin by pressing <CTRL-C>.

You can recursively add multiple files from a directory tree using the
":TlistAddFilesRecursive" command:
>
	:TlistAddFilesRecursive /my/project/dir *.c
<
This command takes two arguments. The first argument specifies the directory
from which to recursively add the files. The second optional argument
specifies the wildcard matching pattern for selecting the files to add. The
default pattern is * and all the files are added.

Displaying tags for only one file~
The taglist window displays the tags for all the files in the Vim buffer list
and all the manually added files. To display the tags for only the current
active buffer, set the 'Tlist_Show_One_File' variable to 1.

Removing files from the taglist~
You can remove a file from the taglist window, by pressing the 'd' key when the
cursor is on one of the tags listed for the file in the taglist window. The
removed file will no longer be displayed in the taglist window in the current
Vim session. To again display the tags for the file, open the file in a Vim
window and then use the ":TlistUpdate" command or use ":TlistAddFiles" command
to add the file to the taglist.

When a buffer is removed from the Vim buffer list using the ":bdelete" or the
":bwipeout" command, the taglist is updated to remove the stored information
for this buffer.

Updating the tags displayed for a file~
The taglist plugin keeps track of the modification time of a file. When the
modification time changes (the file is modified), the taglist plugin
automatically updates the tags listed for that file. The modification time of
a file is checked when you enter a window containing that file or when you
load that file.

You can also update or refresh the tags displayed for a file by pressing the
"u" key in the taglist window. If an existing file is modified, after the file
is saved, the taglist plugin automatically updates the tags displayed for the
file.

You can also use the ":TlistUpdate" command to update the tags for the current
buffer after you made some changes to it. You should save the modified buffer
before you update the taglist window. Otherwise the listed tags will not
include the new tags created in the buffer.

If you have deleted the tags displayed for a file in the taglist window using
the 'd' key, you can again display the tags for that file using the
":TlistUpdate" command.

Controlling the taglist updates~
To disable the automatic processing of new files or modified files, you can
set the 'Tlist_Auto_Update' variable to zero. When this variable is set to
zero, the taglist is updated only when you use the ":TlistUpdate" command or
the ":TlistAddFiles" or the ":TlistAddFilesRecursive" commands. You can use
this option to control which files are added to the taglist.

You can use the ":TlistLock" command to lock the taglist contents. After this
command is executed, new files are not automatically added to the taglist.
When the taglist is locked, you can use the ":TlistUpdate" command to add the
current file or the ":TlistAddFiles" or ":TlistAddFilesRecursive" commands to
add new files to the taglist.  To unlock the taglist, use the ":TlistUnlock"
command.

Displaying the tag prototype~
To display the prototype of the tag under the cursor in the taglist window,
press the space bar. If you place the cursor on a tag name in the taglist
window, then the tag prototype is displayed at the Vim status line after
|'updatetime'| milliseconds. The default value for the |'updatetime'| Vim
option is 4 seconds.

You can get the name and prototype of a tag without opening the taglist window
and the taglist menu using the ":TlistShowTag" and the ":TlistShowPrototype"
commands. These commands will work only if the current file is already present
in the taglist. To use these commands without opening the taglist window, set
the 'Tlist_Process_File_Always' variable to 1.

You can use the ":TlistShowTag" command to display the name of the tag at or
before the specified line number in the specified file.  If the file name and
line number are not supplied, then this command will display the name of the
current tag. For example,
>
	:TlistShowTag
	:TlistShowTag myfile.java 100
<
You can use the ":TlistShowPrototype" command to display the prototype of the
tag at or before the specified line number in the specified file.  If the file
name and the line number are not supplied, then this command will display the
prototype of the current tag.  For example,
>
	:TlistShowPrototype
	:TlistShowPrototype myfile.c 50
<
In the taglist window, when the mouse is moved over a tag name, the tag
prototype is displayed in a balloon. This works only in GUI versions where
balloon evaluation is supported.

Taglist window contents~
The taglist window contains the tags defined in various files in the taglist
grouped by the filename and by the tag type (variable, function, class, etc.).
For tags with scope information (like class members, structures inside
structures, etc.), the scope information is displayed in square brackets "[]"
after the tag name.

The contents of the taglist buffer/window are managed by the taglist plugin.
The |'filetype'| for the taglist buffer is set to 'taglist'.  The Vim
|'modifiable'| option is turned off for the taglist buffer. You should not
manually edit the taglist buffer, by setting the |'modifiable'| flag. If you
manually edit the taglist buffer contents, then the taglist plugin will be out
of sync with the taglist buffer contents and the plugin will no longer work
correctly. To redisplay the taglist buffer contents again, close the taglist
window and reopen it.

Opening and closing the tag and file tree~
In the taglist window, the tag names are displayed as a foldable tree using
the Vim folding support. You can collapse the tree using the '-' key or using
the Vim |zc| fold command. You can open the tree using the '+' key or using
the Vim |zo| fold command. You can open all the folds using the '*' key or
using the Vim |zR| fold command. You can also use the mouse to open/close the
folds. You can close all the folds using the '=' key. You should not manually
create or delete the folds in the taglist window.

To automatically close the fold for the inactive files/buffers and open only
the fold for the current buffer in the taglist window, set the
'Tlist_File_Fold_Auto_Close' variable to 1.

Sorting the tags for a file~
The tags displayed in the taglist window can be sorted either by their name or
by their chronological order. The default sorting method is by the order in
which the tags appear in a file. You can change the default sort method by
setting the 'Tlist_Sort_Type' variable to either "name" or "order". You can
sort the tags by their name by pressing the "s" key in the taglist window. You
can again sort the tags by their chronological order using the "s" key. Each
file in the taglist window can be sorted using different order.

Zooming in and out of the taglist window~
You can press the 'x' key in the taglist window to maximize the taglist
window width/height. The window will be maximized to the maximum possible
width/height without closing the other existing windows. You can again press
'x' to restore the taglist window to the default width/height.

						*taglist-session*
Taglist Session~
A taglist session refers to the group of files and their tags stored in the
taglist in a Vim session.

You can save and restore a taglist session (and all the displayed tags) using
the ":TlistSessionSave" and ":TlistSessionLoad" commands.

To save the information about the tags and files in the taglist to a file, use
the ":TlistSessionSave" command and specify the filename:
>
	:TlistSessionSave <file name>
<
To load a saved taglist session, use the ":TlistSessionLoad" command: >

	:TlistSessionLoad <file name>
<
When you load a taglist session file, the tags stored in the file will be
added to the tags already stored in the taglist.

The taglist session feature can be used to save the tags for large files or a
group of frequently used files (like a project). By using the taglist session
file, you can minimize the amount to time it takes to load/refresh the taglist
for multiple files.

You can create more than one taglist session file for multiple groups of
files.

Displaying the tag name in the Vim status line or the window title bar~
You can use the Tlist_Get_Tagname_By_Line() function provided by the taglist
plugin to display the current tag name in the Vim status line or the window
title bar. Similarly, you can use the Tlist_Get_Tag_Prototype_By_Line()
function to display the current tag prototype in the Vim status line or the
window title bar.

For example, the following command can be used to display the current tag name
in the status line:
>
	:set statusline=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%)
<
The following command can be used to display the current tag name in the
window title bar:
>
	:set title titlestring=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)
<
Note that the current tag name can be displayed only after the file is
processed by the taglist plugin. For this, you have to either set the
'Tlist_Process_File_Always' variable to 1 or open the taglist window or use
the taglist menu. For more information about configuring the Vim status line,
refer to the documentation for the Vim |'statusline'| option.

Changing the taglist window highlighting~
The following Vim highlight groups are defined and used to highlight the
various entities in the taglist window:

    TagListTagName  - Used for tag names
    TagListTagScope - Used for tag scope
    TagListTitle    - Used for tag titles
    TagListComment  - Used for comments
    TagListFileName - Used for filenames

By default, these highlight groups are linked to the standard Vim highlight
groups. If you want to change the colors used for these highlight groups,
prefix the highlight group name with 'My' and define it in your .vimrc or
.gvimrc file: MyTagListTagName, MyTagListTagScope, MyTagListTitle,
MyTagListComment and MyTagListFileName.  For example, to change the colors
used for tag names, you can use the following command:
>
    :highlight MyTagListTagName guifg=blue ctermfg=blue
<
Controlling the taglist window~
To use a horizontally split taglist window, instead of a vertically split
window, set the 'Tlist_Use_Horiz_Window' variable to 1.

To use a vertically split taglist window on the rightmost side of the Vim
window, set the 'Tlist_Use_Right_Window' variable to 1.

You can specify the width of the vertically split taglist window, by setting
the 'Tlist_WinWidth' variable.  You can specify the height of the horizontally
split taglist window, by setting the 'Tlist_WinHeight' variable.

When opening a vertically split taglist window, the Vim window width is
increased to accommodate the new taglist window. When the taglist window is
closed, the Vim window is reduced. To disable this, set the
'Tlist_Inc_Winwidth' variable to zero.

To reduce the number of empty lines in the taglist window, set the
'Tlist_Compact_Format' variable to 1.

To not display the Vim fold column in the taglist window, set the
'Tlist_Enable_Fold_Column' variable to zero.

To display the tag prototypes instead of the tag names in the taglist window,
set the 'Tlist_Display_Prototype' variable to 1.

To not display the scope of the tags next to the tag names, set the
'Tlist_Display_Tag_Scope' variable to zero.

						*taglist-keys*
Taglist window key list~
The following table lists the description of the keys that can be used
in the taglist window.

  Key           Description~

  <CR>          Jump to the location where the tag under cursor is
                defined.
  o             Jump to the location where the tag under cursor is
                defined in a new window.
  P             Jump to the tag in the previous (Ctrl-W_p) window.
  p             Display the tag definition in the file window and
                keep the cursor in the taglist window itself.
  t             Jump to the tag in a new tab. If the file is already
                opened in a tab, move to that tab.
  Ctrl-t	Jump to the tag in a new tab.
  <Space>       Display the prototype of the tag under the cursor.
  		For file names, display the full path to the file,
		file type and the number of tags. For tag types, display the
		tag type and the number of tags.
  u             Update the tags listed in the taglist window
  s             Change the sort order of the tags (by name or by order)
  d             Remove the tags for the file under the cursor
  x             Zoom-in or Zoom-out the taglist window
  +             Open a fold
  -             Close a fold
  *             Open all folds
  =             Close all folds
  [[		Jump to the beginning of the previous file
  <Backspace>	Jump to the beginning of the previous file
  ]]		Jump to the beginning of the next file
  <Tab>		Jump to the beginning of the next file
  q             Close the taglist window
  <F1>          Display help

The above keys will work in both the normal mode and the insert mode.

						*taglist-menu*
Taglist menu~
When using GUI Vim, the taglist plugin can display the tags defined in the
current file in the drop-down menu and the popup menu. By default, this
feature is turned off. To turn on this feature, set the 'Tlist_Show_Menu'
variable to 1.

You can jump to a tag by selecting the tag name from the menu. You can use the
taglist menu independent of the taglist window i.e. you don't need to open the
taglist window to get the taglist menu.

When you switch between files/buffers, the taglist menu is automatically
updated to display the tags defined in the current file/buffer.

The tags are grouped by their type (variables, functions, classes, methods,
etc.) and displayed as a separate sub-menu for each type. If all the tags
defined in a file are of the same type (e.g. functions), then the sub-menu is
not used.

If the number of items in a tag type submenu exceeds the value specified by
the 'Tlist_Max_Submenu_Items' variable, then the submenu will be split into
multiple submenus. The default setting for 'Tlist_Max_Submenu_Items' is 25.
The first and last tag names in the submenu are used to form the submenu name.
The menu items are prefixed by alpha-numeric characters for easy selection by
keyboard.

If the popup menu support is enabled (the |'mousemodel'| option contains
"popup"), then the tags menu is added to the popup menu. You can access
the popup menu by right clicking on the GUI window.

You can regenerate the tags menu by selecting the 'Tags->Refresh menu' entry.
You can sort the tags listed in the menu either by name or by order by
selecting the 'Tags->Sort menu by->Name/Order' menu entry.

You can tear-off the Tags menu and keep it on the side of the Vim window
for quickly locating the tags.

Using the taglist plugin with the winmanager plugin~
You can use the taglist plugin with the winmanager plugin. This will allow you
to use the file explorer, buffer explorer and the taglist plugin at the same
time in different windows. To use the taglist plugin with the winmanager
plugin, set 'TagList' in the 'winManagerWindowLayout' variable. For example,
to use the file explorer plugin and the taglist plugin at the same time, use
the following setting: >

	let winManagerWindowLayout = 'FileExplorer|TagList'
<
Getting help~
If you have installed the taglist help file (this file), then you can use the
Vim ":help taglist-<keyword>" command to get help on the various taglist
topics.

You can press the <F1> key in the taglist window to display the help
information about using the taglist window. If you again press the <F1> key,
the help information is removed from the taglist window.

						*taglist-debug*
Debugging the taglist plugin~
You can use the ":TlistDebug" command to enable logging of the debug messages
from the taglist plugin. To display the logged debug messages, you can use the
":TlistMessages" command. To disable the logging of the debug messages, use
the ":TlistUndebug" command.

You can specify a file name to the ":TlistDebug" command to log the debug
messages to a file. Otherwise, the debug messages are stored in a script-local
variable. In the later case, to minimize memory usage, only the last 3000
characters from the debug messages are stored.

==============================================================================
						*taglist-options*
6. Options~

A number of Vim variables control the behavior of the taglist plugin. These
variables are initialized to a default value. By changing these variables you
can change the behavior of the taglist plugin. You need to change these
settings only if you want to change the behavior of the taglist plugin. You
should use the |:let| command in your .vimrc file to change the setting of any
of these variables.

The configurable taglist variables are listed below. For a detailed
description of these variables refer to the text below this table.

|'Tlist_Auto_Highlight_Tag'|	Automatically highlight the current tag in the
				taglist.
|'Tlist_Auto_Open'|		Open the taglist window when Vim starts.
|'Tlist_Auto_Update'|		Automatically update the taglist to include
				newly edited files.
|'Tlist_Close_On_Select'|	Close the taglist window when a file or tag is
				selected.
|'Tlist_Compact_Format'|	Remove extra information and blank lines from
       				the taglist window.
|'Tlist_Ctags_Cmd'|		Specifies the path to the ctags utility.
|'Tlist_Display_Prototype'|	Show prototypes and not tags in the taglist
				window.
|'Tlist_Display_Tag_Scope'|	Show tag scope next to the tag name.
|'Tlist_Enable_Fold_Column'|	Show the fold indicator column in the taglist
				window.
|'Tlist_Exit_OnlyWindow'|	Close Vim if the taglist is the only window.
|'Tlist_File_Fold_Auto_Close'|	Close tag folds for inactive buffers.
|'Tlist_GainFocus_On_ToggleOpen'|
				Jump to taglist window on open.
|'Tlist_Highlight_Tag_On_BufEnter'|
				On entering a buffer, automatically highlight
				the current tag.
|'Tlist_Inc_Winwidth'|		Increase the Vim window width to accommodate
				the taglist window.
|'Tlist_Max_Submenu_Items'|	Maximum number of items in a tags sub-menu.
|'Tlist_Max_Tag_Length'|	Maximum tag length used in a tag menu entry.
|'Tlist_Process_File_Always'|	Process files even when the taglist window is
				closed.
|'Tlist_Show_Menu'|		Display the tags menu.
|'Tlist_Show_One_File'|		Show tags for the current buffer only.
|'Tlist_Sort_Type'|		Sort method used for arranging the tags.
|'Tlist_Use_Horiz_Window'|	Use a horizontally split window for the
				taglist window.
|'Tlist_Use_Right_Window'|	Place the taglist window on the right side.
|'Tlist_Use_SingleClick'|	Single click on a tag jumps to it.
|'Tlist_WinHeight'|		Horizontally split taglist window height.
|'Tlist_WinWidth'|		Vertically split taglist window width.

						*'Tlist_Auto_Highlight_Tag'*
Tlist_Auto_Highlight_Tag~
The taglist plugin will automatically highlight the current tag in the taglist
window. If you want to disable this, then you can set the
'Tlist_Auto_Highlight_Tag' variable to zero. Note that even though the current
tag highlighting is disabled, the tags for a new file will still be added to
the taglist window.
>
	let Tlist_Auto_Highlight_Tag = 0
<
With the above variable set to 1, you can use the ":TlistHighlightTag" command
to highlight the current tag.

						*'Tlist_Auto_Open'*
Tlist_Auto_Open~
To automatically open the taglist window, when you start Vim, you can set the
'Tlist_Auto_Open' variable to 1. By default, this variable is set to zero and
the taglist window will not be opened automatically on Vim startup.
>
	let Tlist_Auto_Open = 1
<
The taglist window is opened only when a supported type of file is opened on
Vim startup. For example, if you open text files, then the taglist window will
not be opened.

						*'Tlist_Auto_Update'*
Tlist_Auto_Update~
When a new file is edited, the tags defined in the file are automatically
processed and added to the taglist. To stop adding new files to the taglist,
set the 'Tlist_Auto_Update' variable to zero. By default, this variable is set
to 1.
>
	let Tlist_Auto_Update = 0
<
With the above variable set to 1, you can use the ":TlistUpdate" command to
add the tags defined in the current file to the taglist.

						*'Tlist_Close_On_Select'*
Tlist_Close_On_Select~
If you want to close the taglist window when a file or tag is selected, then
set the 'Tlist_Close_On_Select' variable to 1. By default, this variable is
set zero and when you select a tag or file from the taglist window, the window
is not closed.
>
	let Tlist_Close_On_Select = 1
<
						*'Tlist_Compact_Format'*
Tlist_Compact_Format~
By default, empty lines are used to separate different tag types displayed for
a file and the tags displayed for different files in the taglist window. If
you want to display as many tags as possible in the taglist window, you can
set the 'Tlist_Compact_Format' variable to 1 to get a compact display.
>
	let Tlist_Compact_Format = 1
<
						*'Tlist_Ctags_Cmd'*
Tlist_Ctags_Cmd~
The 'Tlist_Ctags_Cmd' variable specifies the location (path) of the exuberant
ctags utility. If exuberant ctags is present in any one of the directories in
the PATH environment variable, then there is no need to set this variable.

The exuberant ctags tool can be installed under different names.  When the
taglist plugin starts up, if the 'Tlist_Ctags_Cmd' variable is not set, it
checks for the names exuberant-ctags, exctags, ctags, ctags.exe and tags in
the PATH environment variable.  If any one of the named executable is found,
then the Tlist_Ctags_Cmd variable is set to that name.

If exuberant ctags is not present in one of the directories specified in the
PATH environment variable, then set this variable to point to the location of
the ctags utility in your system. Note that this variable should point to the
fully qualified exuberant ctags location and NOT to the directory in which
exuberant ctags is installed. If the exuberant ctags tool is not found in
either PATH or in the specified location, then the taglist plugin will not be
loaded. Examples:
>
	let Tlist_Ctags_Cmd = 'd:\tools\ctags.exe'
	let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
<
On Microsoft Windows, if ctags.exe is installed in a directory with space
characters in the name (e.g. C:\Program Files\ctags\ctags.exe), then you need
to set the Tlist_Ctags_Cmd variable like this:
>
	let Tlist_Ctags_Cmd = '"C:\Program Files\ctags\ctags.exe"'
<
						*'Tlist_Display_Prototype'*
Tlist_Display_Prototype~
By default, only the tag name will be displayed in the taglist window. If you
like to see tag prototypes instead of names, set the 'Tlist_Display_Prototype'
variable to 1. By default, this variable is set to zero and only tag names
will be displayed.
>
	let Tlist_Display_Prototype = 1
<
						*'Tlist_Display_Tag_Scope'*
Tlist_Display_Tag_Scope~
By default, the scope of a tag (like a C++ class) will be displayed in
square brackets next to the tag name. If you don't want the tag scopes
to be displayed, then set the 'Tlist_Display_Tag_Scope' to zero. By default,
this variable is set to 1 and the tag scopes will be displayed.
>
	let Tlist_Display_Tag_Scope = 0
<
						*'Tlist_Enable_Fold_Column'*
Tlist_Enable_Fold_Column~
By default, the Vim fold column is enabled and displayed in the taglist
window. If you wish to disable this (for example, when you are working with a
narrow Vim window or terminal), you can set the 'Tlist_Enable_Fold_Column'
variable to zero.
>
	let Tlist_Enable_Fold_Column = 1
<
						*'Tlist_Exit_OnlyWindow'*
Tlist_Exit_OnlyWindow~
If you want to exit Vim if only the taglist window is currently opened, then
set the 'Tlist_Exit_OnlyWindow' variable to 1. By default, this variable is
set to zero and the Vim instance will not be closed if only the taglist window
is present.
>
	let Tlist_Exit_OnlyWindow = 1
<
						*'Tlist_File_Fold_Auto_Close'*
Tlist_File_Fold_Auto_Close~
By default, the tags tree displayed in the taglist window for all the files is
opened. You can close/fold the tags tree for the files manually. To
automatically close the tags tree for inactive files, you can set the
'Tlist_File_Fold_Auto_Close' variable to 1. When this variable is set to 1,
the tags tree for the current buffer is automatically opened and for all the
other buffers is closed.
>
	let Tlist_File_Fold_Auto_Close = 1
<
					    *'Tlist_GainFocus_On_ToggleOpen'*
Tlist_GainFocus_On_ToggleOpen~
When the taglist window is opened using the ':TlistToggle' command, this
option controls whether the cursor is moved to the taglist window or remains
in the current window. By default, this option is set to 0 and the cursor
remains in the current window. When this variable is set to 1, the cursor
moves to the taglist window after opening the taglist window.
>
	let Tlist_GainFocus_On_ToggleOpen = 1
<
					    *'Tlist_Highlight_Tag_On_BufEnter'*
Tlist_Highlight_Tag_On_BufEnter~
When you enter a Vim buffer/window, the current tag in that buffer/window is
automatically highlighted in the taglist window. If the current tag name is
not visible in the taglist window, then the taglist window contents are
scrolled to make that tag name visible. If you like to disable the automatic
highlighting of the current tag when entering a buffer, you can set the
'Tlist_Highlight_Tag_On_BufEnter' variable to zero. The default setting for
this variable is 1.
>
	let Tlist_Highlight_Tag_On_BufEnter = 0
<
						*'Tlist_Inc_Winwidth'*
Tlist_Inc_Winwidth~
By default, when the width of the window is less than 100 and a new taglist
window is opened vertically, then the window width is increased by the value
set in the 'Tlist_WinWidth' variable to accommodate the new window. The value
of this variable is used only if you are using a vertically split taglist
window.

If your terminal doesn't support changing the window width from Vim (older
version of xterm running in a Unix system) or if you see any weird problems in
the screen due to the change in the window width or if you prefer not to
adjust the window width then set the 'Tlist_Inc_Winwidth' variable to zero.
If you are using GNU Screen, you may want to set this variable to zero.
CAUTION: If you are using the MS-Windows version of Vim in a MS-DOS command
window then you must set this variable to zero, otherwise the system may hang
due to a Vim limitation (explained in :help win32-problems)
>
	let Tlist_Inc_Winwidth = 0
<
						*'Tlist_Max_Submenu_Items'*
Tlist_Max_Submenu_Items~
If a file contains too many tags of a particular type (function, variable,
class, etc.), greater than that specified by the 'Tlist_Max_Submenu_Items'
variable, then the menu for that tag type will be split into multiple
sub-menus. The default setting for the 'Tlist_Max_Submenu_Items' variable is
25.  This can be changed by setting the 'Tlist_Max_Submenu_Items' variable:
>
	let Tlist_Max_Submenu_Items = 20
<
The name of the submenu is formed using the names of the first and the last
tag entries in that submenu.

						*'Tlist_Max_Tag_Length'*
Tlist_Max_Tag_Length~
Only the first 'Tlist_Max_Tag_Length' characters from the tag names will be
used to form the tag type submenu name. The default value for this variable is
10.  Change the 'Tlist_Max_Tag_Length' setting if you want to include more or
less characters:
>
	let Tlist_Max_Tag_Length = 10
<
						*'Tlist_Process_File_Always'*
Tlist_Process_File_Always~
By default, the taglist plugin will generate and process the tags defined in
the newly opened files only when the taglist window is opened or when the
taglist menu is enabled. When the taglist window is closed, the taglist plugin
will stop processing the tags for newly opened files.

You can set the 'Tlist_Process_File_Always' variable to 1 to generate the list
of tags for new files even when the taglist window is closed and the taglist
menu is disabled.
>
	let Tlist_Process_File_Always = 1
<
To use the ":TlistShowTag" and the ":TlistShowPrototype" commands without the
taglist window and the taglist menu, you should set this variable to 1.

						*'Tlist_Show_Menu'*
Tlist_Show_Menu~
When using GUI Vim, you can display the tags defined in the current file in a
menu named "Tags". By default, this feature is turned off. To turn on this
feature, set the 'Tlist_Show_Menu' variable to 1:
>
	let Tlist_Show_Menu = 1
<
						*'Tlist_Show_One_File'*
Tlist_Show_One_File~
By default, the taglist plugin will display the tags defined in all the loaded
buffers in the taglist window. If you prefer to display the tags defined only
in the current buffer, then you can set the 'Tlist_Show_One_File' to 1. When
this variable is set to 1, as you switch between buffers, the taglist window
will be refreshed to display the tags for the current buffer and the tags for
the previous buffer will be removed.
>
	let Tlist_Show_One_File = 1
<
						*'Tlist_Sort_Type'*
Tlist_Sort_Type~
The 'Tlist_Sort_Type' variable specifies the sort order for the tags in the
taglist window. The tags can be sorted either alphabetically by their name or
by the order of their appearance in the file (chronological order). By
default, the tag names will be listed by the order in which they are defined
in the file. You can change the sort type (from name to order or from order to
name) by pressing the "s" key in the taglist window. You can also change the
default sort order by setting 'Tlist_Sort_Type' to "name" or "order":
>
	let Tlist_Sort_Type = "name"
<
						*'Tlist_Use_Horiz_Window'*
Tlist_Use_Horiz_Window~
Be default, the tag names are displayed in a vertically split window. If you
prefer a horizontally split window, then set the 'Tlist_Use_Horiz_Window'
variable to 1. If you are running MS-Windows version of Vim in a MS-DOS
command window, then you should use a horizontally split window instead of a
vertically split window. Also, if you are using an older version of xterm in a
Unix system that doesn't support changing the xterm window width, you should
use a horizontally split window.
>
	let Tlist_Use_Horiz_Window = 1
<
						*'Tlist_Use_Right_Window'*
Tlist_Use_Right_Window~
By default, the vertically split taglist window will appear on the left hand
side. If you prefer to open the window on the right hand side, you can set the
'Tlist_Use_Right_Window' variable to 1:
>
	let Tlist_Use_Right_Window = 1
<
						*'Tlist_Use_SingleClick'*
Tlist_Use_SingleClick~
By default, when you double click on the tag name using the left mouse
button, the cursor will be positioned at the definition of the tag. You
can set the 'Tlist_Use_SingleClick' variable to 1 to jump to a tag when
you single click on the tag name using the mouse. By default this variable
is set to zero.
>
	let Tlist_Use_SingleClick = 1
<
Due to a bug in Vim, if you set 'Tlist_Use_SingleClick' to 1 and try to resize
the taglist window using the mouse, then Vim will crash. This problem is fixed
in Vim 6.3 and above. In the meantime, instead of resizing the taglist window
using the mouse, you can use normal Vim window resizing commands to resize the
taglist window.

						*'Tlist_WinHeight'*
Tlist_WinHeight~
The default height of the horizontally split taglist window is 10. This can be
changed by modifying the 'Tlist_WinHeight' variable:
>
	let Tlist_WinHeight = 20
<
The |'winfixheight'| option is set for the taglist window, to maintain the
height of the taglist window, when new Vim windows are opened and existing
windows are closed.

						*'Tlist_WinWidth'*
Tlist_WinWidth~
The default width of the vertically split taglist window is 30. This can be
changed by modifying the 'Tlist_WinWidth' variable:
>
	let Tlist_WinWidth = 20
<
Note that the value of the |'winwidth'| option setting determines the minimum
width of the current window. If you set the 'Tlist_WinWidth' variable to a
value less than that of the |'winwidth'| option setting, then Vim will use the
value of the |'winwidth'| option.

When new Vim windows are opened and existing windows are closed, the taglist
plugin will try to maintain the width of the taglist window to the size
specified by the 'Tlist_WinWidth' variable.

==============================================================================
						*taglist-commands*
7. Commands~

The taglist plugin provides the following ex-mode commands:

|:TlistAddFiles|	Add multiple files to the taglist.
|:TlistAddFilesRecursive|
			Add files recursively to the taglist.
|:TlistClose|		Close the taglist window.
|:TlistDebug|		Start logging of taglist debug messages.
|:TlistLock|		Stop adding new files to the taglist.
|:TlistMessages|	Display the logged taglist plugin debug messages.
|:TlistOpen|		Open and jump to the taglist window.
|:TlistSessionSave|	Save the information about files and tags in the
			taglist to a session file.
|:TlistSessionLoad|	Load the information about files and tags stored
			in a session file to taglist.
|:TlistShowPrototype|	Display the prototype of the tag at or before the
		    	specified line number.
|:TlistShowTag|		Display the name of the tag defined at or before the
			specified line number.
|:TlistHighlightTag|	Highlight the current tag in the taglist window.
|:TlistToggle|		Open or close (toggle) the taglist window.
|:TlistUndebug|		Stop logging of taglist debug messages.
|:TlistUnlock|		Start adding new files to the taglist.
|:TlistUpdate|		Update the tags for the current buffer.

						*:TlistAddFiles*
:TlistAddFiles {file(s)} [file(s) ...]
		Add one or more specified files to the taglist. You can
		specify multiple filenames using wildcards. To specify a
		file name with space character, you should escape the space
		character with a backslash.
		Examples:
>
		    :TlistAddFiles *.c *.cpp
		    :TlistAddFiles file1.html file2.html
<
		If you specify a large number of files, then it will take some
		time for the taglist plugin to process all of them. The
		specified files will not be edited in a Vim window and will
		not be added to the Vim buffer list.

						*:TlistAddFilesRecursive*
:TlistAddFilesRecursive {directory} [ {pattern} ]
		Add files matching {pattern} recursively from the specified
		{directory} to the taglist. If {pattern} is not specified,
		then '*' is assumed. To specify the current directory, use "."
		for {directory}. To specify a directory name with space
		character, you should escape the space character with a
		backslash.
		Examples:
>
		    :TlistAddFilesRecursive myproject *.java
		    :TlistAddFilesRecursive smallproject
<
		If large number of files are present in the specified
		directory tree, then it will take some time for the taglist
		plugin to process all of them.

						*:TlistClose*
:TlistClose	Close the taglist window. This command can be used from any
		one of the Vim windows.

						*:TlistDebug*
:TlistDebug [filename]
		Start logging of debug messages from the taglist plugin.
		If {filename} is specified, then the debug messages are stored
		in the specified file. Otherwise, the debug messages are
		stored in a script local variable. If the file {filename} is
		already present, then it is overwritten.

						*:TlistLock*
:TlistLock
		Lock the taglist and don't process new files. After this
		command is executed, newly edited files will not be added to
		the taglist.

						*:TlistMessages*
:TlistMessages
		Display the logged debug messages from the taglist plugin
		in a window.  This command works only when logging to a
		script-local variable.

						*:TlistOpen*
:TlistOpen	Open and jump to the taglist window. Creates the taglist
		window, if the window is not opened currently. After executing
		this command, the cursor is moved to the taglist window.  When
		the taglist window is opened for the first time, all the files
		in the buffer list are processed and the tags defined in them
		are displayed in the taglist window.

						*:TlistSessionSave*
:TlistSessionSave {filename}
		Saves the information about files and tags in the taglist to
		the specified file. This command can be used to save and
		restore the taglist contents across Vim sessions.

						*:TlistSessionLoad*
:TlistSessionLoad {filename}
		Load the information about files and tags stored in the
		specified session file to the taglist.

						*:TlistShowPrototype*
:TlistShowPrototype [filename] [linenumber]
		Display the prototype of the tag at or before the specified
		line number. If the file name and the line number are not
		specified, then the current file name and line number are
		used. A tag spans multiple lines starting from the line where
		it is defined to the line before the next tag. This command
		displays the prototype for the tag for any line number in this
		range.

						*:TlistShowTag*
:TlistShowTag [filename] [linenumber]
		Display the name of the tag defined at or before the specified
		line number. If the file name and the line number are not
		specified, then the current file name and line number are
		used. A tag spans multiple lines starting from the line where
		it is defined to the line before the next tag. This command
		displays the tag name for any line number in this range.

						*:TlistHighlightTag*
:TlistHighlightTag
		Highlight the current tag in the taglist window. By default,
		the taglist plugin periodically updates the taglist window to
		highlight the current tag. This command can be used to force
		the taglist plugin to highlight the current tag.

						*:TlistToggle*
:TlistToggle	Open or close (toggle) the taglist window. Opens the taglist
		window, if the window is not opened currently. Closes the
		taglist window, if the taglist window is already opened. When
		the taglist window is opened for the first time, all the files
		in the buffer list are processed and the tags are displayed in
		the taglist window. After executing this command, the cursor
		is not moved from the current window to the taglist window.

						*:TlistUndebug*
:TlistUndebug
		Stop logging of debug messages from the taglist plugin.

						*:TlistUnlock*
:TlistUnlock
		Unlock the taglist and start processing newly edited files.

						*:TlistUpdate*
:TlistUpdate	Update the tags information for the current buffer. This
		command can be used to re-process the current file/buffer and
		get the tags information. As the taglist plugin uses the file
		saved in the disk (instead of the file displayed in a Vim
		buffer), you should save a modified buffer before you update
		the taglist. Otherwise the listed tags will not include the
		new tags created in the buffer. You can use this command even
		when the taglist window is not opened.

==============================================================================
						*taglist-functions*
8. Global functions~

The taglist plugin provides several global functions that can be used from
other Vim plugins to interact with the taglist plugin. These functions are
described below.

|Tlist_Get_Filenames()|			Return filenames in the taglist
|Tlist_Update_File_Tags()|		Update the tags for the specified file
|Tlist_Get_Tag_Prototype_By_Line()|	Return the prototype of the tag at or
				    	before the specified line number in the
				    	specified file.
|Tlist_Get_Tagname_By_Line()|		Return the name of the tag at or
					before the specified line number in
					the specified file.
|Tlist_Set_App()|			Set the name of the application
					controlling the taglist window.

					    *Tlist_Get_Filenames()*
Tlist_Get_Filenames()
		Returns a list of filenames in the taglist. Each filename is
		separated by a newline (\n) character. If the taglist is empty
		an empty string is returned.

					    *Tlist_Update_File_Tags()*
Tlist_Update_File_Tags({filename}, {filetype})
		Update the tags for the file {filename}. The second argument
		specifies the Vim filetype for the file. If the taglist plugin
		has not processed the file previously, then the exuberant
		ctags tool is invoked to generate the tags for the file.

					    *Tlist_Get_Tag_Prototype_By_Line()*
Tlist_Get_Tag_Prototype_By_Line([{filename}, {linenumber}])
		Return the prototype of the tag at or before the specified
		line number in the specified file. If the filename and line
		number are not specified, then the current buffer name and the
		current line number are used.

					    *Tlist_Get_Tagname_By_Line()*
Tlist_Get_Tagname_By_Line([{filename}, {linenumber}])
		Return the name of the tag at or before the specified line
		number in the specified file. If the filename and line number
		are not specified, then the current buffer name and the
		current line number are used.

					    *Tlist_Set_App()*
Tlist_Set_App({appname})
		Set the name of the plugin that controls the taglist plugin
		window and buffer. This can be used to integrate the taglist
		plugin with other Vim plugins.

		For example, the winmanager plugin and the Cream package use
		this function and specify the appname as "winmanager" and
		"cream" respectively.

		By default, the taglist plugin is a stand-alone plugin and
		controls the taglist window and buffer. If the taglist window
		is controlled by an external plugin, then the appname should
		be set appropriately.

==============================================================================
						*taglist-extend*
9. Extending~

The taglist plugin supports all the languages supported by the exuberant ctags
tool, which includes the following languages: Assembly, ASP, Awk, Beta, C,
C++, C#, Cobol, Eiffel, Erlang, Fortran, HTML, Java, Javascript, Lisp, Lua,
Make, Pascal, Perl, PHP, Python, Rexx, Ruby, Scheme, Shell, Slang, SML, Sql,
TCL, Verilog, Vim and Yacc.

You can extend the taglist plugin to add support for new languages and also
modify the support for the above listed languages.

You should NOT make modifications to the taglist plugin script file to add
support for new languages. You will lose these changes when you upgrade to the
next version of the taglist plugin. Instead you should follow the below
described instructions to extend the taglist plugin.

You can extend the taglist plugin by setting variables in the .vimrc or _vimrc
file. The name of these variables depends on the language name and is
described below.

Modifying support for an existing language~
To modify the support for an already supported language, you have to set the
tlist_xxx_settings variable in the ~/.vimrc or $HOME/_vimrc file. Replace xxx
with the Vim filetype name for the language file.  For example, to modify the
support for the perl language files, you have to set the tlist_perl_settings
variable. To modify the support for java files, you have to set the
tlist_java_settings variable.

To determine the filetype name used by Vim for a file, use the following
command in the buffer containing the file:

	:set filetype

The above command will display the Vim filetype for the current buffer.

The format of the value set in the tlist_xxx_settings variable is

    <language_name>;flag1:name1;flag2:name2;flag3:name3

The different fields in the value are separated by the ';' character.

The first field 'language_name' is the name used by exuberant ctags to refer
to this language file. This name can be different from the file type name used
by Vim. For example, for C++, the language name used by ctags is 'c++' but the
filetype name used by Vim is 'cpp'. To get the list of language names
supported by exuberant ctags, use the following command:

	$ ctags --list-maps=all

The remaining fields follow the format "flag:name". The sub-field 'flag' is
the language specific flag used by exuberant ctags to generate the
corresponding tags. For example, for the C language, to list only the
functions, the 'f' flag is used. To get the list of flags supported by
exuberant ctags for the various languages use the following command:

	$ ctags --list-kinds=all

The sub-field 'name' specifies the title text to use for displaying the tags
of a particular type. For example, 'name' can be set to 'functions'. This
field can be set to any text string name.

For example, to list only the classes and functions defined in a C++ language
file, add the following line to your .vimrc file:

	let tlist_cpp_settings = 'c++;c:class;f:function'

In the above setting, 'cpp' is the Vim filetype name and 'c++' is the name
used by the exuberant ctags tool. 'c' and 'f' are the flags passed to
exuberant ctags to list C++ classes and functions and 'class' is the title
used for the class tags and 'function' is the title used for the function tags
in the taglist window.

For example, to display only functions defined in a C file and to use "My
Functions" as the title for the function tags, use

	let tlist_c_settings = 'c;f:My Functions'

When you set the tlist_xxx_settings variable, you will override the default
setting used by the taglist plugin for the 'xxx' language. You cannot add to
the default options used by the taglist plugin for a particular file type. To
add to the options used by the taglist plugin for a language, copy the option
values from the taglist plugin file to your .vimrc file and modify it.

Adding support for a new language~
If you want to add support for a new language to the taglist plugin, you need
to first extend the exuberant ctags tool. For more information about extending
exuberant ctags, visit the following page:

    http://ctags.sourceforge.net/EXTENDING.html

To add support for a new language, set the tlist_xxx_settings variable in the
~/.vimrc file appropriately as described above. Replace 'xxx' in the variable
name with the Vim filetype name for the new language.

For example, to extend the taglist plugin to support the latex language, you
can use the following line (assuming, you have already extended exuberant
ctags to support the latex language):

	let tlist_tex_settings='latex;b:bibitem;c:command;l:label'

With the above line, when you edit files of filetype "tex" in Vim, the taglist
plugin will invoke the exuberant ctags tool passing the "latex" filetype and
the flags b, c and l to generate the tags. The text heading 'bibitem',
'command' and 'label' will be used in the taglist window for the tags which
are generated for the flags b, c and l respectively.

==============================================================================
						*taglist-faq*
10. Frequently Asked Questions~

Q. The taglist plugin doesn't work. The taglist window is empty and the tags
   defined in a file are not displayed.
A. Are you using Vim version 6.0 and above? The taglist plugin relies on the
   features supported by Vim version 6.0 and above. You can use the following
   command to get the Vim version:
>
	$ vim --version
<
   Are you using exuberant ctags version 5.0 and above? The taglist plugin
   relies on the features supported by exuberant ctags and will not work with
   GNU ctags or the Unix ctags utility. You can use the following command to
   determine whether the ctags installed in your system is exuberant ctags:
>
	$ ctags --version
<
   Is exuberant ctags present in one of the directories in your PATH? If not,
   you need to set the Tlist_Ctags_Cmd variable to point to the location of
   exuberant ctags. Use the following Vim command to verify that this is setup
   correctly:
>
	:echo system(Tlist_Ctags_Cmd . ' --version')
<
   The above command should display the version information for exuberant
   ctags.

   Did you turn on the Vim filetype detection? The taglist plugin relies on
   the filetype detected by Vim and passes the filetype to the exuberant ctags
   utility to parse the tags. Check the output of the following Vim command:
>
	:filetype
<
   The output of the above command should contain "filetype detection:ON".
   To turn on the filetype detection, add the following line to the .vimrc or
   _vimrc file:
>
	filetype on
<
   Is your version of Vim compiled with the support for the system() function?
   The following Vim command should display 1:
>
	:echo exists('*system')
<
   In some Linux distributions (particularly Suse Linux), the default Vim
   installation is built without the support for the system() function. The
   taglist plugin uses the system() function to invoke the exuberant ctags
   utility. You need to rebuild Vim after enabling the support for the
   system() function. If you use the default build options, the system()
   function will be supported.

   Do you have the |'shellslash'| option set? You can try disabling the
   |'shellslash'| option. When the taglist plugin invokes the exuberant ctags
   utility with the path to the file, if the incorrect slashes are used, then
   you will see errors.

   Check the shell related Vim options values using the following command:
>
	:set shell? shellcmdflag? shellpipe?
	:set shellquote? shellredir? shellxquote?
<
   If these options are set in your .vimrc or _vimrc file, try removing those
   lines.

   Are you using a Unix shell in a MS-Windows environment? For example,
   the Unix shell from the MKS-toolkit. Do you have the SHELL environment
   set to point to this shell? You can try resetting the SHELL environment
   variable.

   If you are using a Unix shell on MS-Windows, you should try to use
   exuberant ctags that is compiled for Unix-like environments so that
   exuberant ctags will understand path names with forward slash characters.

   Is your filetype supported by the exuberant ctags utility? The file types
   supported by the exuberant ctags utility are listed in the ctags help. If a
   file type is not supported, you have to extend exuberant ctags. You can use
   the following command to list the filetypes supported by exuberant ctags:
>
	ctags --list-languages
<
   Run the following command from the shell prompt and check whether the tags
   defined in your file are listed in the output from exuberant ctags:
>
	ctags -f - --format=2 --excmd=pattern --fields=nks <filename>
<
   If you see your tags in the output from the above command, then the
   exuberant ctags utility is properly parsing your file.

   Do you have the .ctags or _ctags or the ctags.cnf file in your home
   directory for specifying default options or for extending exuberant ctags?
   If you do have this file, check the options in this file and make sure
   these options are not interfering with the operation of the taglist plugin.

   If you are using MS-Windows, check the value of the TEMP and TMP
   environment variables. If these environment variables are set to a path
   with space characters in the name, then try using the DOS 8.3 short name
   for the path or set them to a path without the space characters in the
   name. For example, if the temporary directory name is "C:\Documents and
   Settings\xyz\Local Settings\Temp", then try setting the TEMP variable to
   the following:
>
	set TEMP=C:\DOCUMEN~1\xyz\LOCALS~1\Temp
<
   If exuberant ctags is installed in a directory with space characters in the
   name, then try adding the directory to the PATH environment variable or try
   setting the 'Tlist_Ctags_Cmd' variable to the shortest path name to ctags
   or try copying the exuberant ctags to a path without space characters in
   the name. For example, if exuberant ctags is installed in the directory
   "C:\Program Files\Ctags", then try setting the 'Tlist_Ctags_Cmd' variable
   as below:
>
	let Tlist_Ctags_Cmd='C:\Progra~1\Ctags\ctags.exe'
<
   If you are using a cygwin compiled version of exuberant ctags on MS-Windows,
   make sure that either you have the cygwin compiled sort utility installed
   and available in your PATH or compile exuberant ctags with internal sort
   support. Otherwise, when exuberant ctags sorts the tags output by invoking
   the sort utility, it may end up invoking the MS-Windows version of
   sort.exe, thereby resulting in failure.

Q. When I try to open the taglist window, I am seeing the following error
   message. How do I fix this problem?

   Taglist: Failed to generate tags for /my/path/to/file
   ctags: illegal option -- -^@usage: ctags [-BFadtuwvx] [-f tagsfile] file ...

A. The taglist plugin will work only with the exuberant ctags tool. You
   cannot use the GNU ctags or the Unix ctags program with the taglist plugin.
   You will see an error message similar to the one shown above, if you try
   use a non-exuberant ctags program with Vim. To fix this problem, either add
   the exuberant ctags tool location to the PATH environment variable or set
   the 'Tlist_Ctags_Cmd' variable.

Q. A file has more than one tag with the same name. When I select a tag name
   from the taglist window, the cursor is positioned at the incorrect tag
   location.
A. The taglist plugin uses the search pattern generated by the exuberant ctags
   utility to position the cursor at the location of a tag definition. If a
   file has more than one tag with the same name and same prototype, then the
   search pattern will be the same. In this case, when searching for the tag
   pattern, the cursor may be positioned at the incorrect location.

Q. I have made some modifications to my file and introduced new
   functions/classes/variables. I have not yet saved my file. The taglist
   plugin is not displaying the new tags when I update the taglist window.
A. The exuberant ctags utility will process only files that are present in the
   disk. To list the tags defined in a file, you have to save the file and
   then update the taglist window.

Q. I have created a ctags file using the exuberant ctags utility for my source
   tree. How do I configure the taglist plugin to use this tags file?
A. The taglist plugin doesn't use a tags file stored in disk. For every opened
   file, the taglist plugin invokes the exuberant ctags utility to get the
   list of tags dynamically. The Vim system() function is used to invoke
   exuberant ctags and get the ctags output. This function internally uses a
   temporary file to store the output. This file is deleted after the output
   from the command is read. So you will never see the file that contains the
   output of exuberant ctags.

Q. When I set the |'updatetime'| option to a low value (less than 1000) and if
   I keep pressing a key with the taglist window open, the current buffer
   contents are changed. Why is this?
A. The taglist plugin uses the |CursorHold| autocmd to highlight the current
   tag. The CursorHold autocmd triggers for every |'updatetime'| milliseconds.
   If the |'updatetime'| option is set to a low value, then the CursorHold
   autocmd will be triggered frequently. As the taglist plugin changes
   the focus to the taglist window to highlight the current tag, this could
   interfere with the key movement resulting in changing the contents of
   the current buffer. The workaround for this problem is to not set the
   |'updatetime'| option to a low value.

==============================================================================
						*taglist-license*
11. License~
Permission is hereby granted to use and distribute the taglist plugin, with or
without modifications, provided that this copyright notice is copied with it.
Like anything else that's free, taglist.vim is provided *as is* and comes with
no warranty of any kind, either expressed or implied. In no event will the
copyright holder be liable for any damamges resulting from the use of this
software.

==============================================================================
						*taglist-todo*
12. Todo~

1. Group tags according to the scope and display them. For example,
   group all the tags belonging to a C++/Java class
2. Support for displaying tags in a modified (not-yet-saved) file.
3. Automatically open the taglist window only for selected filetypes.
   For other filetypes, close the taglist window.
4. When using the shell from the MKS toolkit, the taglist plugin
   doesn't work.
5. The taglist plugin doesn't work with files edited remotely using the
   netrw plugin. The exuberant ctags utility cannot process files over
   scp/rcp/ftp, etc.

==============================================================================

vim:tw=78:ts=8:noet:ft=help:
                                                                                                                                                                     doc/NERD_tree.txt                                                                                   0000664 0001750 0001750 00000156501 12401543467 014651  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              *NERD_tree.txt*   A tree explorer plugin that owns your momma!



    omg its ... ~

    ________  ________   _   ____________  ____     __________  ____________~
   /_  __/ / / / ____/  / | / / ____/ __ \/ __ \   /_  __/ __ \/ ____/ ____/~
    / / / /_/ / __/    /  |/ / __/ / /_/ / / / /    / / / /_/ / __/ / __/   ~
   / / / __  / /___   / /|  / /___/ _, _/ /_/ /    / / / _, _/ /___/ /___   ~
  /_/ /_/ /_/_____/  /_/ |_/_____/_/ |_/_____/    /_/ /_/ |_/_____/_____/   ~


                              Reference Manual~




==============================================================================
CONTENTS                                                   *NERDTree-contents*

    1.Intro...................................|NERDTree|
    2.Functionality provided..................|NERDTreeFunctionality|
        2.1.Global commands...................|NERDTreeGlobalCommands|
        2.2.Bookmarks.........................|NERDTreeBookmarks|
            2.2.1.The bookmark table..........|NERDTreeBookmarkTable|
            2.2.2.Bookmark commands...........|NERDTreeBookmarkCommands|
            2.2.3.Invalid bookmarks...........|NERDTreeInvalidBookmarks|
        2.3.NERD tree mappings................|NERDTreeMappings|
        2.4.The NERD tree menu................|NERDTreeMenu|
    3.Options.................................|NERDTreeOptions|
        3.1.Option summary....................|NERDTreeOptionSummary|
        3.2.Option details....................|NERDTreeOptionDetails|
    4.The NERD tree API.......................|NERDTreeAPI|
        4.1.Key map API.......................|NERDTreeKeymapAPI|
        4.2.Menu API..........................|NERDTreeMenuAPI|
    5.About...................................|NERDTreeAbout|
    6.Changelog...............................|NERDTreeChangelog|
    7.Credits.................................|NERDTreeCredits|
    8.License.................................|NERDTreeLicense|

==============================================================================
1. Intro                                                            *NERDTree*

What is this "NERD tree"??

The NERD tree allows you to explore your filesystem and to open files and
directories. It presents the filesystem to you in the form of a tree which you
manipulate with the keyboard and/or mouse. It also allows you to perform
simple filesystem operations.

The following features and functionality are provided by the NERD tree:
    * Files and directories are displayed in a hierarchical tree structure
    * Different highlighting is provided for the following types of nodes:
        * files
        * directories
        * sym-links
        * windows .lnk files
        * read-only files
        * executable files
    * Many (customisable) mappings are provided to manipulate the tree:
        * Mappings to open/close/explore directory nodes
        * Mappings to open files in new/existing windows/tabs
        * Mappings to change the current root of the tree
        * Mappings to navigate around the tree
        * ...
    * Directories and files can be bookmarked.
    * Most NERD tree navigation can also be done with the mouse
    * Filtering of tree content (can be toggled at runtime)
        * custom file filters to prevent e.g. vim backup files being displayed
        * optional displaying of hidden files (. files)
        * files can be "turned off" so that only directories are displayed
    * The position and size of the NERD tree window can be customised
    * The order in which the nodes in the tree are listed can be customised.
    * A model of your filesystem is created/maintained as you explore it. This
      has several advantages:
        * All filesystem information is cached and is only re-read on demand
        * If you revisit a part of the tree that you left earlier in your
          session, the directory nodes will be opened/closed as you left them
    * The script remembers the cursor position and window position in the NERD
      tree so you can toggle it off (or just close the tree window) and then
      reopen it (with NERDTreeToggle) the NERD tree window will appear exactly
      as you left it
    * You can have a separate NERD tree for each tab, share trees across tabs,
      or a mix of both.
    * By default the script overrides the default file browser (netrw), so if
      you :edit a directory a (slightly modified) NERD tree will appear in the
      current window
    * A programmable menu system is provided (simulates right clicking on a
      node)
        * one default menu plugin is provided to perform basic filesystem
          operations (create/delete/move/copy files/directories)
    * There's an API for adding your own keymappings


==============================================================================
2. Functionality provided                              *NERDTreeFunctionality*

------------------------------------------------------------------------------
2.1. Global Commands                                  *NERDTreeGlobalCommands*

:NERDTree [<start-directory> | <bookmark>]                         *:NERDTree*
    Opens a fresh NERD tree. The root of the tree depends on the argument
    given. There are 3 cases: If no argument is given, the current directory
    will be used.  If a directory is given, that will be used. If a bookmark
    name is given, the corresponding directory will be used.  For example: >
        :NERDTree /home/marty/vim7/src
        :NERDTree foo   (foo is the name of a bookmark)
<
:NERDTreeFromBookmark <bookmark>                       *:NERDTreeFromBookmark*
    Opens a fresh NERD tree with the root initialized to the dir for
    <bookmark>.  The only reason to use this command over :NERDTree is for
    the completion (which is for bookmarks rather than directories).

:NERDTreeToggle [<start-directory> | <bookmark>]             *:NERDTreeToggle*
    If a NERD tree already exists for this tab, it is reopened and rendered
    again.  If no NERD tree exists for this tab then this command acts the
    same as the |:NERDTree| command.

:NERDTreeMirror                                              *:NERDTreeMirror*
    Shares an existing NERD tree, from another tab, in the current tab.
    Changes made to one tree are reflected in both as they are actually the
    same buffer.

    If only one other NERD tree exists, that tree is automatically mirrored. If
    more than one exists, the script will ask which tree to mirror.

:NERDTreeClose                                                *:NERDTreeClose*
    Close the NERD tree in this tab.

:NERDTreeFind                                                  *:NERDTreeFind*
    Find the current file in the tree.

    If not tree exists and the current file is under vim's CWD, then init a
    tree at the CWD and reveal the file. Otherwise init a tree in the current
    file's directory.

    In any case, the current file is revealed and the cursor is placed on it.

:NERDTreeCWD                                                    *:NERDTreeCWD*
    Change tree root to current directory. If no NERD tree exists for this
    tab, a new tree will be opened.

------------------------------------------------------------------------------
2.2. Bookmarks                                             *NERDTreeBookmarks*

Bookmarks in the NERD tree are a way to tag files or directories of interest.
For example, you could use bookmarks to tag all of your project directories.

------------------------------------------------------------------------------
2.2.1. The Bookmark Table                              *NERDTreeBookmarkTable*

If the bookmark table is active (see |NERDTree-B| and
|'NERDTreeShowBookmarks'|), it will be rendered above the tree. You can double
click bookmarks or use the |NERDTree-o| mapping to activate them. See also,
|NERDTree-t| and |NERDTree-T|

------------------------------------------------------------------------------
2.2.2. Bookmark commands                            *NERDTreeBookmarkCommands*

Note that the following commands are only available in the NERD tree buffer.

:Bookmark [<name>]
    Bookmark the current node as <name>. If there is already a <name>
    bookmark, it is overwritten. <name> must not contain spaces.
    If <name> is not provided, it defaults to the file or directory name.
    For directories, a trailing slash is present.

:BookmarkToRoot <bookmark>
    Make the directory corresponding to <bookmark> the new root. If a treenode
    corresponding to <bookmark> is already cached somewhere in the tree then
    the current tree will be used, otherwise a fresh tree will be opened.
    Note that if <bookmark> points to a file then its parent will be used
    instead.

:RevealBookmark <bookmark>
    If the node is cached under the current root then it will be revealed
    (i.e. directory nodes above it will be opened) and the cursor will be
    placed on it.

:OpenBookmark <bookmark>
    <bookmark> must point to a file. The file is opened as though |NERDTree-o|
    was applied. If the node is cached under the current root then it will be
    revealed and the cursor will be placed on it.

:ClearBookmarks [<bookmarks>]
    Remove all the given bookmarks. If no bookmarks are given then remove all
    bookmarks on the current node.

:ClearAllBookmarks
    Remove all bookmarks.

:ReadBookmarks
    Re-read the bookmarks in the |'NERDTreeBookmarksFile'|.

See also |:NERDTree| and |:NERDTreeFromBookmark|.

------------------------------------------------------------------------------
2.2.3. Invalid Bookmarks                            *NERDTreeInvalidBookmarks*

If invalid bookmarks are detected, the script will issue an error message and
the invalid bookmarks will become unavailable for use.

These bookmarks will still be stored in the bookmarks file (see
|'NERDTreeBookmarksFile'|), down the bottom. There will always be a blank line
after the valid bookmarks but before the invalid ones.

Each line in the bookmarks file represents one bookmark. The proper format is:
<bookmark name><space><full path to the bookmark location>

After you have corrected any invalid bookmarks, either restart vim, or go
:ReadBookmarks from the NERD tree window.

------------------------------------------------------------------------------
2.3. NERD tree Mappings                                     *NERDTreeMappings*

Default  Description~                                             help-tag~
Key~

o.......Open files, directories and bookmarks....................|NERDTree-o|
go......Open selected file, but leave cursor in the NERDTree.....|NERDTree-go|
t.......Open selected node/bookmark in a new tab.................|NERDTree-t|
T.......Same as 't' but keep the focus on the current tab........|NERDTree-T|
i.......Open selected file in a split window.....................|NERDTree-i|
gi......Same as i, but leave the cursor on the NERDTree..........|NERDTree-gi|
s.......Open selected file in a new vsplit.......................|NERDTree-s|
gs......Same as s, but leave the cursor on the NERDTree..........|NERDTree-gs|
O.......Recursively open the selected directory..................|NERDTree-O|
x.......Close the current nodes parent...........................|NERDTree-x|
X.......Recursively close all children of the current node.......|NERDTree-X|
e.......Edit the current dir.....................................|NERDTree-e|

<CR>...............same as |NERDTree-o|.
double-click.......same as the |NERDTree-o| map.
middle-click.......same as |NERDTree-i| for files, same as
                   |NERDTree-e| for dirs.

D.......Delete the current bookmark .............................|NERDTree-D|

P.......Jump to the root node....................................|NERDTree-P|
p.......Jump to current nodes parent.............................|NERDTree-p|
K.......Jump up inside directories at the current tree depth.....|NERDTree-K|
J.......Jump down inside directories at the current tree depth...|NERDTree-J|
<C-J>...Jump down to the next sibling of the current directory...|NERDTree-C-J|
<C-K>...Jump up to the previous sibling of the current directory.|NERDTree-C-K|

C.......Change the tree root to the selected dir.................|NERDTree-C|
u.......Move the tree root up one directory......................|NERDTree-u|
U.......Same as 'u' except the old root node is left open........|NERDTree-U|
r.......Recursively refresh the current directory................|NERDTree-r|
R.......Recursively refresh the current root.....................|NERDTree-R|
m.......Display the NERD tree menu...............................|NERDTree-m|
cd......Change the CWD to the dir of the selected node...........|NERDTree-cd|
CD......Change tree root to the CWD..............................|NERDTree-CD|

I.......Toggle whether hidden files displayed....................|NERDTree-I|
f.......Toggle whether the file filters are used.................|NERDTree-f|
F.......Toggle whether files are displayed.......................|NERDTree-F|
B.......Toggle whether the bookmark table is displayed...........|NERDTree-B|

q.......Close the NERDTree window................................|NERDTree-q|
A.......Zoom (maximize/minimize) the NERDTree window.............|NERDTree-A|
?.......Toggle the display of the quick help.....................|NERDTree-?|

------------------------------------------------------------------------------
                                                                  *NERDTree-o*
Default key: o
Map option: NERDTreeMapActivateNode
Applies to: files and directories.

If a file node is selected, it is opened in the previous window.

If a directory is selected it is opened or closed depending on its current
state.

If a bookmark that links to a directory is selected then that directory
becomes the new root.

If a bookmark that links to a file is selected then that file is opened in the
previous window.

------------------------------------------------------------------------------
                                                                 *NERDTree-go*
Default key: go
Map option: None
Applies to: files.

If a file node is selected, it is opened in the previous window, but the
cursor does not move.

The key combo for this mapping is always "g" + NERDTreeMapActivateNode (see
|NERDTree-o|).

------------------------------------------------------------------------------
                                                                  *NERDTree-t*
Default key: t
Map option: NERDTreeMapOpenInTab
Applies to: files and directories.

Opens the selected file in a new tab. If a directory is selected, a fresh
NERD Tree for that directory is opened in a new tab.

If a bookmark which points to a directory is selected, open a NERD tree for
that directory in a new tab. If the bookmark points to a file, open that file
in a new tab.

------------------------------------------------------------------------------
                                                                  *NERDTree-T*
Default key: T
Map option: NERDTreeMapOpenInTabSilent
Applies to: files and directories.

The same as |NERDTree-t| except that the focus is kept in the current tab.

------------------------------------------------------------------------------
                                                                  *NERDTree-i*
Default key: i
Map option: NERDTreeMapOpenSplit
Applies to: files.

Opens the selected file in a new split window and puts the cursor in the new
window.

------------------------------------------------------------------------------
                                                                 *NERDTree-gi*
Default key: gi
Map option: None
Applies to: files.

The same as |NERDTree-i| except that the cursor is not moved.

The key combo for this mapping is always "g" + NERDTreeMapOpenSplit (see
|NERDTree-i|).

------------------------------------------------------------------------------
                                                                  *NERDTree-s*
Default key: s
Map option: NERDTreeMapOpenVSplit
Applies to: files.

Opens the selected file in a new vertically split window and puts the cursor in
the new window.

------------------------------------------------------------------------------
                                                                 *NERDTree-gs*
Default key: gs
Map option: None
Applies to: files.

The same as |NERDTree-s| except that the cursor is not moved.

The key combo for this mapping is always "g" + NERDTreeMapOpenVSplit (see
|NERDTree-s|).

------------------------------------------------------------------------------
                                                                  *NERDTree-O*
Default key: O
Map option: NERDTreeMapOpenRecursively
Applies to: directories.

Recursively opens the selected directory.

All files and directories are cached, but if a directory would not be
displayed due to file filters (see |'NERDTreeIgnore'| |NERDTree-f|) or the
hidden file filter (see |'NERDTreeShowHidden'|) then its contents are not
cached. This is handy, especially if you have .svn directories.

------------------------------------------------------------------------------
                                                                  *NERDTree-x*
Default key: x
Map option: NERDTreeMapCloseDir
Applies to: files and directories.

Closes the parent of the selected node.

------------------------------------------------------------------------------
                                                                  *NERDTree-X*
Default key: X
Map option: NERDTreeMapCloseChildren
Applies to: directories.

Recursively closes all children of the selected directory.

Tip: To quickly "reset" the tree, use |NERDTree-P| with this mapping.

------------------------------------------------------------------------------
                                                                  *NERDTree-e*
Default key: e
Map option: NERDTreeMapOpenExpl
Applies to: files and directories.

|:edit|s the selected directory, or the selected file's directory. This could
result in a NERD tree or a netrw being opened, depending on
|'NERDTreeHijackNetrw'|.

------------------------------------------------------------------------------
                                                                  *NERDTree-D*
Default key: D
Map option: NERDTreeMapDeleteBookmark
Applies to: lines in the bookmarks table

Deletes the currently selected bookmark.

------------------------------------------------------------------------------
                                                                  *NERDTree-P*
Default key: P
Map option: NERDTreeMapJumpRoot
Applies to: no restrictions.

Jump to the tree root.

------------------------------------------------------------------------------
                                                                  *NERDTree-p*
Default key: p
Map option: NERDTreeMapJumpParent
Applies to: files and directories.

Jump to the parent node of the selected node.

------------------------------------------------------------------------------
                                                                  *NERDTree-K*
Default key: K
Map option: NERDTreeMapJumpFirstChild
Applies to: files and directories.

Jump to the first child of the current nodes parent.

If the cursor is already on the first node then do the following:
    * loop back thru the siblings of the current nodes parent until we find an
      open dir with children
    * go to the first child of that node

------------------------------------------------------------------------------
                                                                  *NERDTree-J*
Default key: J
Map option: NERDTreeMapJumpLastChild
Applies to: files and directories.

Jump to the last child of the current nodes parent.

If the cursor is already on the last node then do the following:
    * loop forward thru the siblings of the current nodes parent until we find
      an open dir with children
    * go to the last child of that node

------------------------------------------------------------------------------
                                                                *NERDTree-C-J*
Default key: <C-J>
Map option: NERDTreeMapJumpNextSibling
Applies to: files and directories.

Jump to the next sibling of the selected node.

------------------------------------------------------------------------------
                                                                *NERDTree-C-K*
Default key: <C-K>
Map option: NERDTreeMapJumpPrevSibling
Applies to: files and directories.

Jump to the previous sibling of the selected node.

------------------------------------------------------------------------------
                                                                  *NERDTree-C*
Default key: C
Map option: NERDTreeMapChangeRoot
Applies to: files and directories.

Make the selected directory node the new tree root. If a file is selected, its
parent is used.

------------------------------------------------------------------------------
                                                                  *NERDTree-u*
Default key: u
Map option: NERDTreeMapUpdir
Applies to: no restrictions.

Move the tree root up a dir (like doing a "cd ..").

------------------------------------------------------------------------------
                                                                  *NERDTree-U*
Default key: U
Map option: NERDTreeMapUpdirKeepOpen
Applies to: no restrictions.

Like |NERDTree-u| except that the old tree root is kept open.

------------------------------------------------------------------------------
                                                                  *NERDTree-r*
Default key: r
Map option: NERDTreeMapRefresh
Applies to: files and directories.

If a dir is selected, recursively refresh that dir, i.e. scan the filesystem
for changes and represent them in the tree.

If a file node is selected then the above is done on it's parent.

------------------------------------------------------------------------------
                                                                  *NERDTree-R*
Default key: R
Map option: NERDTreeMapRefreshRoot
Applies to: no restrictions.

Recursively refresh the tree root.

------------------------------------------------------------------------------
                                                                  *NERDTree-m*
Default key: m
Map option: NERDTreeMapMenu
Applies to: files and directories.

Display the NERD tree menu. See |NERDTreeMenu| for details.

------------------------------------------------------------------------------
                                                                 *NERDTree-cd*
Default key: cd
Map option: NERDTreeMapChdir
Applies to: files and directories.

Change vims current working directory to that of the selected node.

------------------------------------------------------------------------------
                                                                 *NERDTree-CD*
Default key: CD
Map option: NERDTreeMapCWD
Applies to: no restrictions.

Change tree root to vims current working directory.

------------------------------------------------------------------------------
                                                                  *NERDTree-I*
Default key: I
Map option: NERDTreeMapToggleHidden
Applies to: no restrictions.

Toggles whether hidden files (i.e. "dot files") are displayed.

------------------------------------------------------------------------------
                                                                  *NERDTree-f*
Default key: f
Map option: NERDTreeMapToggleFilters
Applies to: no restrictions.

Toggles whether file filters are used. See |'NERDTreeIgnore'| for details.

------------------------------------------------------------------------------
                                                                  *NERDTree-F*
Default key: F
Map option: NERDTreeMapToggleFiles
Applies to: no restrictions.

Toggles whether file nodes are displayed.

------------------------------------------------------------------------------
                                                                  *NERDTree-B*
Default key: B
Map option: NERDTreeMapToggleBookmarks
Applies to: no restrictions.

Toggles whether the bookmarks table is displayed.

------------------------------------------------------------------------------
                                                                  *NERDTree-q*
Default key: q
Map option: NERDTreeMapQuit
Applies to: no restrictions.

Closes the NERDtree window.

------------------------------------------------------------------------------
                                                                  *NERDTree-A*
Default key: A
Map option: NERDTreeMapToggleZoom
Applies to: no restrictions.

Maximize (zoom) and minimize the NERDtree window.

------------------------------------------------------------------------------
                                                                  *NERDTree-?*
Default key: ?
Map option: NERDTreeMapHelp
Applies to: no restrictions.

Toggles whether the quickhelp is displayed.

------------------------------------------------------------------------------
2.3. The NERD tree menu                                         *NERDTreeMenu*

The NERD tree has a menu that can be programmed via the an API (see
|NERDTreeMenuAPI|). The idea is to simulate the "right click" menus that most
file explorers have.

The script comes with two default menu plugins: exec_menuitem.vim and
fs_menu.vim. fs_menu.vim adds some basic filesystem operations to the menu for
creating/deleting/moving/copying files and dirs. exec_menuitem.vim provides a
menu item to execute executable files.

Related tags: |NERDTree-m| |NERDTreeApi|

==============================================================================
3. Customisation                                             *NERDTreeOptions*


------------------------------------------------------------------------------
3.1. Customisation summary                             *NERDTreeOptionSummary*

The script provides the following options that can customise the behaviour the
NERD tree. These options should be set in your vimrc.

|'loaded_nerd_tree'|            Turns off the script.

|'NERDTreeAutoCenter'|          Controls whether the NERD tree window centers
                                when the cursor moves within a specified
                                distance to the top/bottom of the window.

|'NERDTreeAutoCenterThreshold'| Controls the sensitivity of autocentering.

|'NERDTreeCaseSensitiveSort'|   Tells the NERD tree whether to be case
                                sensitive or not when sorting nodes.

|'NERDTreeSortHiddenFirst'|     Tells the NERD tree whether to take the dot
                                at the beginning of the hidden file names
                                into account when sorting nodes.

|'NERDTreeChDirMode'|           Tells the NERD tree if/when it should change
                                vim's current working directory.

|'NERDTreeHighlightCursorline'| Tell the NERD tree whether to highlight the
                                current cursor line.

|'NERDTreeHijackNetrw'|         Tell the NERD tree whether to replace the netrw
                                autocommands for exploring local directories.

|'NERDTreeIgnore'|              Tells the NERD tree which files to ignore.

|'NERDTreeRespectWildIgnore'|   Tells the NERD tree to respect |'wildignore'|.

|'NERDTreeBookmarksFile'|       Where the bookmarks are stored.

|'NERDTreeBookmarksSort'|       Whether the bookmarks list is sorted on
                                display.

|'NERDTreeMouseMode'|           Tells the NERD tree how to handle mouse
                                clicks.

|'NERDTreeQuitOnOpen'|          Closes the tree window after opening a file.

|'NERDTreeShowBookmarks'|       Tells the NERD tree whether to display the
                                bookmarks table on startup.

|'NERDTreeShowFiles'|           Tells the NERD tree whether to display files
                                in the tree on startup.

|'NERDTreeShowHidden'|          Tells the NERD tree whether to display hidden
                                files on startup.

|'NERDTreeShowLineNumbers'|     Tells the NERD tree whether to display line
                                numbers in the tree window.

|'NERDTreeSortOrder'|           Tell the NERD tree how to sort the nodes in
                                the tree.

|'NERDTreeStatusline'|          Set a statusline for NERD tree windows.

|'NERDTreeWinPos'|              Tells the script where to put the NERD tree
                                window.

|'NERDTreeWinSize'|             Sets the window size when the NERD tree is
                                opened.

|'NERDTreeMinimalUI'|           Disables display of the 'Bookmarks' label and
                                'Press ? for help' text.

|'NERDTreeDirArrows'|           Tells the NERD tree to use arrows instead of
                                + ~ chars when displaying directories.

|'NERDTreeCascadeOpenSingleChildDir'|
                                Cascade open while selected directory has only
                                one child that also is a directory.

|'NERDTreeAutoDeleteBuffer'|    Tells the NERD tree to automatically remove
                                a buffer when a file is being deleted or renamed
                                via a context menu command.

------------------------------------------------------------------------------
3.2. Customisation details                             *NERDTreeOptionDetails*

To enable any of the below options you should put the given line in your
~/.vimrc

                                                          *'loaded_nerd_tree'*
If this plugin is making you feel homicidal, it may be a good idea to turn it
off with this line in your vimrc: >
    let loaded_nerd_tree=1
<

------------------------------------------------------------------------------
                                                        *'NERDTreeAutoCenter'*
Values: 0 or 1.
Default: 1

If set to 1, the NERD tree window will center around the cursor if it moves to
within |'NERDTreeAutoCenterThreshold'| lines of the top/bottom of the window.

This is ONLY done in response to tree navigation mappings,
i.e. |NERDTree-J| |NERDTree-K| |NERDTree-C-J| |NERDTree-C-K| |NERDTree-p|
|NERDTree-P|

The centering is done with a |zz| operation.

------------------------------------------------------------------------------
                                               *'NERDTreeAutoCenterThreshold'*
Values: Any natural number.
Default: 3

This option controls the "sensitivity" of the NERD tree auto centering. See
|'NERDTreeAutoCenter'| for details.

------------------------------------------------------------------------------
                                                 *'NERDTreeCaseSensitiveSort'*
Values: 0 or 1.
Default: 0.

By default the NERD tree does not sort nodes case sensitively, i.e. nodes
could appear like this: >
    bar.c
    Baz.c
    blarg.c
    boner.c
    Foo.c
<
But, if you set this option to 1 then the case of the nodes will be taken into
account. The above nodes would then be sorted like this: >
    Baz.c
    Foo.c
    bar.c
    blarg.c
    boner.c
<
------------------------------------------------------------------------------
                                                         *'NERDTreeChDirMode'*

Values: 0, 1 or 2.
Default: 0.

Use this option to tell the script when (if at all) to change the current
working directory (CWD) for vim.

If it is set to 0 then the CWD is never changed by the NERD tree.

If set to 1 then the CWD is changed when the NERD tree is first loaded to the
directory it is initialized in. For example, if you start the NERD tree with >
    :NERDTree /home/marty/foobar
<
then the CWD will be changed to /home/marty/foobar and will not be changed
again unless you init another NERD tree with a similar command.

If the option is set to 2 then it behaves the same as if set to 1 except that
the CWD is changed whenever the tree root is changed. For example, if the CWD
is /home/marty/foobar and you make the node for /home/marty/foobar/baz the new
root then the CWD will become /home/marty/foobar/baz.

------------------------------------------------------------------------------
                                               *'NERDTreeHighlightCursorline'*
Values: 0 or 1.
Default: 1.

If set to 1, the current cursor line in the NERD tree buffer will be
highlighted. This is done using the |'cursorline'| option.

------------------------------------------------------------------------------
                                                       *'NERDTreeHijackNetrw'*
Values: 0 or 1.
Default: 1.

If set to 1, doing a >
    :edit <some directory>
<
will open up a "secondary" NERD tree instead of a netrw in the target window.

Secondary NERD trees behaves slightly different from a regular trees in the
following respects:
    1. 'o' will open the selected file in the same window as the tree,
       replacing it.
    2. you can have as many secondary tree as you want in the same tab.

------------------------------------------------------------------------------
                                                            *'NERDTreeIgnore'*
Values: a list of regular expressions.
Default: ['\~$'].

This option is used to specify which files the NERD tree should ignore.  It
must be a list of regular expressions. When the NERD tree is rendered, any
files/dirs that match any of the regex's in 'NERDTreeIgnore' wont be
displayed.

For example if you put the following line in your vimrc: >
    let NERDTreeIgnore=['\.vim$', '\~$']
<
then all files ending in .vim or ~ will be ignored.

There are 2 magic flags that can be appended to the end of each regular
expression to specify that the regex should match only files or only dirs.
These flags are "[[dir]]" and "[[file]]". Example: >
    let NERDTreeIgnore=['.d$[[dir]]', '.o$[[file]]']
<
This will cause all dirs ending in ".d" to be ignored and all files ending in
".o" to be ignored.

Note: to tell the NERD tree not to ignore any files you must use the following
line: >
    let NERDTreeIgnore=[]
<

The file filters can be turned on and off dynamically with the |NERDTree-f|
mapping.

------------------------------------------------------------------------------
                                                *'NERDTreeRespectWildIgnore'*
Values: 0 or 1.
Default: 0.

If set to 1, the |'wildignore'| setting is respected.

------------------------------------------------------------------------------
                                                     *'NERDTreeBookmarksFile'*
Values: a path
Default: $HOME/.NERDTreeBookmarks

This is where bookmarks are saved. See |NERDTreeBookmarkCommands|.

------------------------------------------------------------------------------
                                                     *'NERDTreeBookmarksSort'*
Values: 0 or 1
Default: 1

If set to 0 then the bookmarks list is not sorted.
If set to 1 the bookmarks list is sorted.

------------------------------------------------------------------------------
                                                       *'NERDTreeMouseMode'*
Values: 1, 2 or 3.
Default: 1.

If set to 1 then a double click on a node is required to open it.
If set to 2 then a single click will open directory nodes, while a double
click will still be required for file nodes.
If set to 3 then a single click will open any node.

Note: a double click anywhere on a line that a tree node is on will
activate it, but all single-click activations must be done on name of the node
itself. For example, if you have the following node: >
    | | |-application.rb
<
then (to single click activate it) you must click somewhere in
'application.rb'.

------------------------------------------------------------------------------
                                                        *'NERDTreeQuitOnOpen'*

Values: 0 or 1.
Default: 0

If set to 1, the NERD tree window will close after opening a file with the
|NERDTree-o|, |NERDTree-i|, |NERDTree-t| and |NERDTree-T| mappings.

------------------------------------------------------------------------------
                                                     *'NERDTreeShowBookmarks'*
Values: 0 or 1.
Default: 0.

If this option is set to 1 then the bookmarks table will be displayed.

This option can be toggled dynamically, per tree, with the |NERDTree-B|
mapping.

------------------------------------------------------------------------------
                                                         *'NERDTreeShowFiles'*
Values: 0 or 1.
Default: 1.

If this option is set to 1 then files are displayed in the NERD tree. If it is
set to 0 then only directories are displayed.

This option can be toggled dynamically, per tree, with the |NERDTree-F|
mapping and is useful for drastically shrinking the tree when you are
navigating to a different part of the tree.

------------------------------------------------------------------------------
                                                        *'NERDTreeShowHidden'*
Values: 0 or 1.
Default: 0.

This option tells vim whether to display hidden files by default. This option
can be dynamically toggled, per tree, with the |NERDTree-I| mapping.  Use one
of the follow lines to set this option: >
    let NERDTreeShowHidden=0
    let NERDTreeShowHidden=1
<

------------------------------------------------------------------------------
                                                   *'NERDTreeShowLineNumbers'*
Values: 0 or 1.
Default: 0.

This option tells vim whether to display line numbers for the NERD tree
window.  Use one of the follow lines to set this option: >
    let NERDTreeShowLineNumbers=0
    let NERDTreeShowLineNumbers=1
<

------------------------------------------------------------------------------
                                                         *'NERDTreeSortOrder'*
Values: a list of regular expressions.
Default: ['\/$', '*', '\.swp$',  '\.bak$', '\~$']

This option is set to a list of regular expressions which are used to
specify the order of nodes under their parent.

For example, if the option is set to: >
    ['\.vim$', '\.c$', '\.h$', '*', 'foobar']
<
then all .vim files will be placed at the top, followed by all .c files then
all .h files. All files containing the string 'foobar' will be placed at the
end.  The star is a special flag: it tells the script that every node that
doesnt match any of the other regexps should be placed here.

If no star is present in 'NERDTreeSortOrder' then one is automatically
appended to the array.

The regex '\/$' should be used to match directory nodes.

After this sorting is done, the files in each group are sorted alphabetically.

Other examples: >
    (1) ['*', '\/$']
    (2) []
    (3) ['\/$', '\.rb$', '\.php$', '*', '\.swp$',  '\.bak$', '\~$']
<
1. Directories will appear last, everything else will appear above.
2. Everything will simply appear in alphabetical order.
3. Dirs will appear first, then ruby and php. Swap files, bak files and vim
   backup files will appear last with everything else preceding them.

------------------------------------------------------------------------------
                                                        *'NERDTreeStatusline'*
Values: Any valid statusline setting.
Default: %{b:NERDTreeRoot.path.strForOS(0)}

Tells the script what to use as the |'statusline'| setting for NERD tree
windows.

Note that the statusline is set using |:let-&| not |:set| so escaping spaces
isn't necessary.

Setting this option to -1 will will deactivate it so that your global
statusline setting is used instead.

------------------------------------------------------------------------------
                                                            *'NERDTreeWinPos'*
Values: "left" or "right"
Default: "left".

This option is used to determine where NERD tree window is placed on the
screen.

This option makes it possible to use two different explorer plugins
simultaneously. For example, you could have the taglist plugin on the left of
the window and the NERD tree on the right.

------------------------------------------------------------------------------
                                                           *'NERDTreeWinSize'*
Values: a positive integer.
Default: 31.

This option is used to change the size of the NERD tree when it is loaded.

------------------------------------------------------------------------------
                                                         *'NERDTreeMinimalUI'*
Values: 0 or 1
Default: 0

This options disables the 'Bookmarks' label 'Press ? for help' text. Use one
of the following lines to set this option: >
    let NERDTreeMinimalUI=0
    let NERDTreeMinimalUI=1
<

------------------------------------------------------------------------------
                                                           *'NERDTreeDirArrows'*
Values: 0 or 1
Default: 0.

This option is used to change the default look of directory nodes displayed in
the tree. When set to 0 it shows old-school bars (|), + and ~ chars. If set to
1 it shows right and down arrows.  Use one of the follow lines to set this
option: >
    let NERDTreeDirArrows=0
    let NERDTreeDirArrows=1
<

------------------------------------------------------------------------------
                                          *'NERDTreeCascadeOpenSingleChildDir'*
Values: 0 or 1
Default: 1.

When opening dir nodes, this option tells NERDTree to recursively open dirs
that have only one child which is also a dir. NERDTree will stop when it finds
a dir that contains anything but another single dir. This option also causes
the |NERDTree-x| mapping to close dirs in the same manner. This option may be
useful for Java projects. Use one of the follow lines to set this option: >
    let NERDTreeCascadeOpenSingleChildDir=0
    let NERDTreeCascadeOpenSingleChildDir=1
<

------------------------------------------------------------------------------
                                          *'NERDTreeAutoDeleteBuffer'*
Values: 0 or 1
Default: 0.

When using a context menu to delete or rename a file you may also want to delete
the buffer which is no more valid. If the option is not set you will see a
confirmation if you really want to delete an old buffer. If you always press 'y'
then it worths to set this option to 1. Use one of the follow lines to set this
option: >
    let NERDTreeAutoDeleteBuffer=0
    let NERDTreeAutoDeleteBuffer=1
<

==============================================================================
4. The NERD tree API                                             *NERDTreeAPI*

The NERD tree script allows you to add custom key mappings and menu items via
a set of API calls. Any scripts that use this API should be placed in
~/.vim/nerdtree_plugin/ (*nix) or ~/vimfiles/nerdtree_plugin (windows).

The script exposes some prototype objects that can be used to manipulate the
tree and/or get information from it: >
    g:NERDTreePath
    g:NERDTreeDirNode
    g:NERDTreeFileNode
    g:NERDTreeBookmark
<
See the code/comments in NERD_tree.vim to find how to use these objects. The
following code conventions are used:
    * class members start with a capital letter
    * instance members start with a lower case letter
    * private members start with an underscore

See this blog post for more details:
 http://got-ravings.blogspot.com/2008/09/vim-pr0n-prototype-based-objects.html

------------------------------------------------------------------------------
4.1. Key map API                                           *NERDTreeKeymapAPI*

NERDTreeAddKeyMap({options})                             *NERDTreeAddKeyMap()*
    Adds a new keymapping for all NERD tree buffers.
    {options} must be a dictionary, and must contain the following keys:
    "key" - the trigger key for the new mapping
    "callback" - the function the new mapping will be bound to
    "quickhelpText" - the text that will appear in the quickhelp (see
    |NERDTree-?|)
    "override" - if 1 then this new mapping will override whatever previous
    mapping was defined for the key/scope combo. Useful for overriding the
    default mappings.

    Additionally, a "scope" argument may be supplied. This constrains the
    mapping so that it is only activated if the cursor is on a certain object.
    That object is then passed into the handling method. Possible values are:
        "FileNode" - a file node
        "DirNode" - a directory node
        "Node" - a file or directory node
        "Bookmark" - A bookmark
        "all" - the keymap is not constrained to any scope (default). When
        thei is used, the handling function is not passed any arguments.


    Example: >
        call NERDTreeAddKeyMap({
               \ 'key': 'foo',
               \ 'callback': 'NERDTreeCDHandler',
               \ 'quickhelpText': 'echo full path of current node',
               \ 'scope': 'DirNode' })

        function! NERDTreeCDHandler(dirnode)
            call a:dirnode.changeToDir()
        endfunction
<
    This code should sit in a file like ~/.vim/nerdtree_plugin/mymapping.vim.
    It adds a (redundant) mapping on 'foo' which changes vim's CWD to that of
    the current dir node. Note this mapping will only fire when the cursor is
    on a directory node.

------------------------------------------------------------------------------
4.2. Menu API                                                *NERDTreeMenuAPI*

NERDTreeAddSubmenu({options})                           *NERDTreeAddSubmenu()*
    Creates and returns a new submenu.

    {options} must be a dictionary and must contain the following keys:
    "text" - the text of the submenu that the user will see
    "shortcut" - a shortcut key for the submenu (need not be unique)

    The following keys are optional:
    "isActiveCallback" - a function that will be called to determine whether
    this submenu item will be displayed or not. The callback function must return
    0 or 1.
    "parent" - the parent submenu of the new submenu (returned from a previous
    invocation of NERDTreeAddSubmenu()). If this key is left out then the new
    submenu will sit under the top level menu.

    See below for an example.

NERDTreeAddMenuItem({options})                         *NERDTreeAddMenuItem()*
    Adds a new menu item to the NERD tree menu (see |NERDTreeMenu|).

    {options} must be a dictionary and must contain the
    following keys:
    "text" - the text of the menu item which the user will see
    "shortcut" - a shortcut key for the menu item (need not be unique)
    "callback" - the function that will be called when the user activates the
    menu item.

    The following keys are optional:
    "isActiveCallback" - a function that will be called to determine whether
    this menu item will be displayed or not. The callback function must return
    0 or 1.
    "parent" - if the menu item belongs under a submenu then this key must be
    specified. This value for this key will be the object that
    was returned when the submenu was created with |NERDTreeAddSubmenu()|.

    See below for an example.

NERDTreeAddMenuSeparator([{options}])             *NERDTreeAddMenuSeparator()*
    Adds a menu separator (a row of dashes).

    {options} is an optional dictionary that may contain the following keys:
    "isActiveCallback" - see description in |NERDTreeAddMenuItem()|.

Below is an example of the menu API in action. >
    call NERDTreeAddMenuSeparator()

    call NERDTreeAddMenuItem({
                \ 'text': 'a (t)op level menu item',
                \ 'shortcut': 't',
                \ 'callback': 'SomeFunction' })

    let submenu = NERDTreeAddSubmenu({
                \ 'text': 'a (s)ub menu',
                \ 'shortcut': 's' })

    call NERDTreeAddMenuItem({
                \ 'text': '(n)ested item 1',
                \ 'shortcut': 'n',
                \ 'callback': 'SomeFunction',
                \ 'parent': submenu })

    call NERDTreeAddMenuItem({
                \ 'text': '(n)ested item 2',
                \ 'shortcut': 'n',
                \ 'callback': 'SomeFunction',
                \ 'parent': submenu })
<
This will create the following menu: >
  --------------------
  a (t)op level menu item
  a (s)ub menu
<
Where selecting "a (s)ub menu" will lead to a second menu: >
  (n)ested item 1
  (n)ested item 2
<
When any of the 3 concrete menu items are selected the function "SomeFunction"
will be called.

------------------------------------------------------------------------------
NERDTreeRender()                                            *NERDTreeRender()*
    Re-renders the NERD tree buffer. Useful if you change the state of the
    tree and you want to it to be reflected in the UI.

==============================================================================
5. About                                                       *NERDTreeAbout*

The author of the NERD tree is a terrible terrible monster called Martyzilla
who gobbles up small children with milk and sugar for breakfast.

He can be reached at martin.grenfell at gmail dot com. He would love to hear
from you, so feel free to send him suggestions and/or comments about this
plugin.  Don't be shy --- the worst he can do is slaughter you and stuff you in
the fridge for later ;)

The latest stable versions can be found at
    http://www.vim.org/scripts/script.php?script_id=1658

The latest dev versions are on github
    http://github.com/scrooloose/nerdtree


==============================================================================
6. Changelog                                               *NERDTreeChangelog*

Next
    - add 'scope' argument to the key map API
    - add NERDTreeCustomIgnoreFilter hook - needs doc
    - add magic [[dir]] and [[file]] flags to NERDTreeIgnore

4.2.0
    - Add NERDTreeDirArrows option to make the UI use pretty arrow chars
      instead of the old +~| chars to define the tree structure (sickill)
    - shift the syntax highlighting out into its own syntax file (gnap)
    - add some mac specific options to the filesystem menu - for macvim
      only (andersonfreitas)
    - Add NERDTreeMinimalUI option to remove some non functional parts of the
      nerdtree ui (camthompson)
    - tweak the behaviour of :NERDTreeFind - see :help :NERDTreeFind for the
      new behaviour (benjamingeiger)
    - if no name is given to :Bookmark, make it default to the name of the
      target file/dir (minyoung)
    - use 'file' completion when doing copying, create, and move
      operations (EvanDotPro)
    - lots of misc bug fixes (paddyoloughlin, sdewald, camthompson, Vitaly
      Bogdanov, AndrewRadev, mathias, scottstvnsn, kml, wycats, me RAWR!)

4.1.0
    features:
    - NERDTreeFind to reveal the node for the current buffer in the tree,
      see |NERDTreeFind|. This effectively merges the FindInNERDTree plugin (by
      Doug McInnes) into the script.
    - make NERDTreeQuitOnOpen apply to the t/T keymaps too. Thanks to Stefan
      Ritter and Rémi Prévost.
    - truncate the root node if wider than the tree window. Thanks to Victor
      Gonzalez.

    bugfixes:
    - really fix window state restoring
    - fix some win32 path escaping issues. Thanks to Stephan Baumeister, Ricky,
      jfilip1024, and Chris Chambers

4.0.0
    - add a new programmable menu system (see :help NERDTreeMenu).
    - add new APIs to add menus/menu-items to the menu system as well as
      custom key mappings to the NERD tree buffer (see :help NERDTreeAPI).
    - removed the old API functions
    - added a mapping to maximize/restore the size of nerd tree window, thanks
      to Guillaume Duranceau for the patch. See :help NERDTree-A for details.

    - fix a bug where secondary nerd trees (netrw hijacked trees) and
      NERDTreeQuitOnOpen didnt play nicely, thanks to Curtis Harvey.
    - fix a bug where the script ignored directories whose name ended in a dot,
      thanks to Aggelos Orfanakos for the patch.
    - fix a bug when using the x mapping on the tree root, thanks to Bryan
      Venteicher for the patch.
    - fix a bug where the cursor position/window size of the nerd tree buffer
      wasnt being stored on closing the window, thanks to Richard Hart.
    - fix a bug where NERDTreeMirror would mirror the wrong tree

3.1.1
    - fix a bug where a non-listed no-name buffer was getting created every
      time the tree windows was created, thanks to Derek Wyatt and owen1
    - make <CR> behave the same as the 'o' mapping
    - some helptag fixes in the doc, thanks strull
    - fix a bug when using :set nohidden and opening a file where the previous
      buf was modified. Thanks iElectric
    - other minor fixes

3.1.0
    New features:
    - add mappings to open files in a vsplit, see :help NERDTree-s and :help
      NERDTree-gs
    - make the statusline for the nerd tree window default to something
      hopefully more useful. See :help 'NERDTreeStatusline'
    Bugfixes:
    - make the hijack netrw functionality work when vim is started with "vim
      <some dir>" (thanks to Alf Mikula for the patch).
    - fix a bug where the CWD wasnt being changed for some operations even when
      NERDTreeChDirMode==2 (thanks to Lucas S. Buchala)
    - add -bar to all the nerd tree :commands so they can chain with other
      :commands (thanks to tpope)
    - fix bugs when ignorecase was set (thanks to nach)
    - fix a bug with the relative path code (thanks to nach)
    - fix a bug where doing a :cd would cause :NERDTreeToggle to fail (thanks nach)


3.0.1
    Bugfixes:
    - fix bugs with :NERDTreeToggle and :NERDTreeMirror when 'hidden
      was not set
    - fix a bug where :NERDTree <path> would fail if <path> was relative and
      didnt start with a ./ or ../  Thanks to James Kanze.
    - make the q mapping work with secondary (:e <dir>  style) trees,
      thanks to jamessan
    - fix a bunch of small bugs with secondary trees

    More insane refactoring.

3.0.0
    - hijack netrw so that doing an :edit <directory>  will put a NERD tree in
      the window rather than a netrw browser. See :help 'NERDTreeHijackNetrw'
    - allow sharing of trees across tabs, see :help :NERDTreeMirror
    - remove "top" and "bottom" as valid settings for NERDTreeWinPos
    - change the '<tab>' mapping to 'i'
    - change the 'H' mapping to 'I'
    - lots of refactoring

==============================================================================
7. Credits                                                   *NERDTreeCredits*

Thanks to the following people for testing, bug reports, ideas etc. Without
you I probably would have got bored of the hacking the NERD tree and
just downloaded pr0n instead.

    Tim Carey-Smith (halorgium)
    Vigil
    Nick Brettell
    Thomas Scott Urban
    Terrance Cohen
    Yegappan Lakshmanan
    Jason Mills
    Michael Geddes (frogonwheels)
    Yu Jun
    Michael Madsen
    AOYAMA Shotaro
    Zhang Weiwu
    Niels Aan de Brugh
    Olivier Yiptong
    Zhang Shuhan
    Cory Echols
    Piotr Czachur
    Yuan Jiang
    Matan Nassau
    Maxim Kim
    Charlton Wang
    Matt Wozniski (godlygeek)
    knekk
    Sean Chou
    Ryan Penn
    Simon Peter Nicholls
    Michael Foobar
    Tomasz Chomiuk
    Denis Pokataev
    Tim Pope (tpope)
    James Kanze
    James Vega (jamessan)
    Frederic Chanal (nach)
    Alf Mikula
    Lucas S. Buchala
    Curtis Harvey
    Guillaume Duranceau
    Richard Hart (hates)
    Doug McInnes
    Stefan Ritter
    Rémi Prévost
    Victor Gonzalez
    Stephan Baumeister
    Ricky
    jfilip1024
    Chris Chambers
    Vitaly Bogdanov
    Patrick O'Loughlin (paddyoloughlin)
    Cam Thompson (camthompson)
    Marcin Kulik (sickill)
    Steve DeWald (sdewald)
    Ivan Necas (iNecas)
    George Ang (gnap)
    Evan Coury (EvanDotPro)
    Andrew Radev (AndrewRadev)
    Matt Gauger (mathias)
    Scott Stevenson (scottstvnsn)
    Anderson Freitas (andersonfreitas)
    Kamil K. Lemański (kml)
    Yehuda Katz (wycats)
    Min-Young Wu (minyoung)
    Benjamin Geiger (benjamingeiger)

==============================================================================
8. License                                                   *NERDTreeLicense*

The NERD tree is released under the wtfpl.
See http://sam.zoy.org/wtfpl/COPYING.
                                                                                                                                                                                               lib/                                                                                                0000775 0001750 0001750 00000000000 12401543467 012332  5                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              lib/nerdtree/                                                                                       0000775 0001750 0001750 00000000000 12401543467 014142  5                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              lib/nerdtree/creator.vim                                                                            0000664 0001750 0001750 00000025524 12401543467 016326  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: Creator
"Creates primary/secondary/mirror nerdtree windows. Sets up all the window and
"buffer options and key mappings etc.
"============================================================
let s:Creator = {}
let g:NERDTreeCreator = s:Creator

"FUNCTION: s:Creator._bindMappings() {{{1
function! s:Creator._bindMappings()
    "make <cr> do the same as the activate node mapping
    nnoremap <silent> <buffer> <cr> :call nerdtree#ui_glue#invokeKeyMap(g:NERDTreeMapActivateNode)<cr>

    call g:NERDTreeKeyMap.BindAll()

    command! -buffer -nargs=? Bookmark :call nerdtree#ui_glue#bookmarkNode('<args>')
    command! -buffer -complete=customlist,nerdtree#completeBookmarks -nargs=1 RevealBookmark :call nerdtree#ui_glue#revealBookmark('<args>')
    command! -buffer -complete=customlist,nerdtree#completeBookmarks -nargs=1 OpenBookmark :call nerdtree#ui_glue#openBookmark('<args>')
    command! -buffer -complete=customlist,nerdtree#completeBookmarks -nargs=* ClearBookmarks call nerdtree#ui_glue#clearBookmarks('<args>')
    command! -buffer -complete=customlist,nerdtree#completeBookmarks -nargs=+ BookmarkToRoot call g:NERDTreeBookmark.ToRoot('<args>')
    command! -buffer -nargs=0 ClearAllBookmarks call g:NERDTreeBookmark.ClearAll() <bar> call b:NERDTree.render()
    command! -buffer -nargs=0 ReadBookmarks call g:NERDTreeBookmark.CacheBookmarks(0) <bar> call b:NERDTree.render()
    command! -buffer -nargs=0 WriteBookmarks call g:NERDTreeBookmark.Write()
endfunction

"FUNCTION: s:Creator._broadcastInitEvent() {{{1
function! s:Creator._broadcastInitEvent()
    silent doautocmd User NERDTreeInit
endfunction

" FUNCTION: s:Creator.BufNamePrefix() {{{2
function! s:Creator.BufNamePrefix()
    return 'NERD_tree_'
endfunction

"FUNCTION: s:Creator.CreatePrimary(a:name) {{{1
function! s:Creator.CreatePrimary(name)
    let creator = s:Creator.New()
    call creator.createPrimary(a:name)
endfunction

"FUNCTION: s:Creator.createPrimary(a:name) {{{1
"name: the name of a bookmark or a directory
function! s:Creator.createPrimary(name)
    let path = self._pathForString(a:name)

    "if instructed to, then change the vim CWD to the dir the NERDTree is
    "inited in
    if g:NERDTreeChDirMode != 0
        call path.changeToDir()
    endif

    if g:NERDTree.ExistsForTab()
        if nerdtree#isTreeOpen()
            call nerdtree#closeTree()
        endif
        unlet t:NERDTreeBufName
    endif

    call self._createTreeWin()
    call self._createNERDTree(path)
    let b:NERDTreeType = "primary"
    let b:treeShowHelp = 0
    let b:NERDTreeIgnoreEnabled = 1
    let b:NERDTreeShowFiles = g:NERDTreeShowFiles
    let b:NERDTreeShowHidden = g:NERDTreeShowHidden
    let b:NERDTreeShowBookmarks = g:NERDTreeShowBookmarks

    call b:NERDTree.render()
    call b:NERDTreeRoot.putCursorHere(0, 0)

    call self._broadcastInitEvent()
endfunction

"FUNCTION: s:Creator.CreateSecondary(dir) {{{1
function! s:Creator.CreateSecondary(dir)
    let creator = s:Creator.New()
    call creator.createSecondary(a:dir)
endfunction

"FUNCTION: s:Creator.createSecondary(dir) {{{1
function! s:Creator.createSecondary(dir)
    try
        let path = g:NERDTreePath.New(a:dir)
    catch /^NERDTree.InvalidArgumentsError/
        call nerdtree#echo("Invalid directory name:" . a:name)
        return
    endtry

    "we want the directory buffer to disappear when we do the :edit below
    setlocal bufhidden=wipe

    let previousBuf = expand("#")

    "we need a unique name for each secondary tree buffer to ensure they are
    "all independent
    exec "silent edit " . self._nextBufferName()

    let b:NERDTreePreviousBuf = bufnr(previousBuf)
    call self._createNERDTree(path)
    call self._setCommonBufOptions()
    let b:NERDTreeType = "secondary"

    call b:NERDTree.render()

    call self._broadcastInitEvent()
endfunction

" FUNCTION: s:Creator._createNERDTree(path) {{{1
function! s:Creator._createNERDTree(path)
    let b:NERDTree = g:NERDTree.New(a:path)
    "TODO: This is kept for compatability only since many things use
    "b:NERDTreeRoot instead of the new NERDTree.root
    "Remove this one day
    let b:NERDTreeRoot = b:NERDTree.root

    call b:NERDTree.root.open()
endfunction

" FUNCTION: s:Creator.CreateMirror() {{{1
function! s:Creator.CreateMirror()
    let creator = s:Creator.New()
    call creator.createMirror()
endfunction

" FUNCTION: s:Creator.createMirror() {{{1
function! s:Creator.createMirror()
    "get the names off all the nerd tree buffers
    let treeBufNames = []
    for i in range(1, tabpagenr("$"))
        let nextName = self._tabpagevar(i, 'NERDTreeBufName')
        if nextName != -1 && (!exists("t:NERDTreeBufName") || nextName != t:NERDTreeBufName)
            call add(treeBufNames, nextName)
        endif
    endfor
    let treeBufNames = self._uniq(treeBufNames)

    "map the option names (that the user will be prompted with) to the nerd
    "tree buffer names
    let options = {}
    let i = 0
    while i < len(treeBufNames)
        let bufName = treeBufNames[i]
        let treeRoot = getbufvar(bufName, "NERDTreeRoot")
        let options[i+1 . '. ' . treeRoot.path.str() . '  (buf name: ' . bufName . ')'] = bufName
        let i = i + 1
    endwhile

    "work out which tree to mirror, if there is more than 1 then ask the user
    let bufferName = ''
    if len(keys(options)) > 1
        let choices = ["Choose a tree to mirror"]
        let choices = extend(choices, sort(keys(options)))
        let choice = inputlist(choices)
        if choice < 1 || choice > len(options) || choice ==# ''
            return
        endif

        let bufferName = options[sort(keys(options))[choice-1]]
    elseif len(keys(options)) ==# 1
        let bufferName = values(options)[0]
    else
        call nerdtree#echo("No trees to mirror")
        return
    endif

    if g:NERDTree.ExistsForTab() && nerdtree#isTreeOpen()
        call nerdtree#closeTree()
    endif

    let t:NERDTreeBufName = bufferName
    call self._createTreeWin()
    exec 'buffer ' .  bufferName
    if !&hidden
        call b:NERDTree.render()
    endif
endfunction

"FUNCTION: s:Creator._createTreeWin() {{{1
"Inits the NERD tree window. ie. opens it, sizes it, sets all the local
"options etc
function! s:Creator._createTreeWin()
    "create the nerd tree window
    let splitLocation = g:NERDTreeWinPos ==# "left" ? "topleft " : "botright "
    let splitSize = g:NERDTreeWinSize

    if !exists('t:NERDTreeBufName')
        let t:NERDTreeBufName = self._nextBufferName()
        silent! exec splitLocation . 'vertical ' . splitSize . ' new'
        silent! exec "edit " . t:NERDTreeBufName
    else
        silent! exec splitLocation . 'vertical ' . splitSize . ' split'
        silent! exec "buffer " . t:NERDTreeBufName
    endif

    setlocal winfixwidth
    call self._setCommonBufOptions()
endfunction

"FUNCTION: s:Creator.New() {{{1
function! s:Creator.New()
    let newCreator = copy(self)
    return newCreator
endfunction

" FUNCTION: s:Creator._nextBufferName() {{{2
" returns the buffer name for the next nerd tree
function! s:Creator._nextBufferName()
    let name = s:Creator.BufNamePrefix() . self._nextBufferNumber()
    return name
endfunction

" FUNCTION: s:Creator._nextBufferNumber() {{{2
" the number to add to the nerd tree buffer name to make the buf name unique
function! s:Creator._nextBufferNumber()
    if !exists("s:Creator._NextBufNum")
        let s:Creator._NextBufNum = 1
    else
        let s:Creator._NextBufNum += 1
    endif

    return s:Creator._NextBufNum
endfunction

"FUNCTION: s:Creator._pathForString(str) {{{1
"find a bookmark or adirectory for the given string
function! s:Creator._pathForString(str)
    let path = {}
    if g:NERDTreeBookmark.BookmarkExistsFor(a:str)
        let path = g:NERDTreeBookmark.BookmarkFor(a:str).path
    else
        let dir = a:str ==# '' ? getcwd() : a:str

        "hack to get an absolute path if a relative path is given
        if dir =~# '^\.'
            let dir = getcwd() . g:NERDTreePath.Slash() . dir
        endif
        let dir = g:NERDTreePath.Resolve(dir)

        try
            let path = g:NERDTreePath.New(dir)
        catch /^NERDTree.InvalidArgumentsError/
            call nerdtree#echo("No bookmark or directory found for: " . a:str)
            return
        endtry
    endif
    if !path.isDirectory
        let path = path.getParent()
    endif

    return path
endfunction

"FUNCTION: s:Creator._setCommonBufOptions() {{{1
function! s:Creator._setCommonBufOptions()
    "throwaway buffer options
    setlocal noswapfile
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal nowrap
    setlocal foldcolumn=0
    setlocal foldmethod=manual
    setlocal nofoldenable
    setlocal nobuflisted
    setlocal nospell
    if g:NERDTreeShowLineNumbers
        setlocal nu
    else
        setlocal nonu
        if v:version >= 703
            setlocal nornu
        endif
    endif

    iabc <buffer>

    if g:NERDTreeHighlightCursorline
        setlocal cursorline
    endif

    call self._setupStatusline()

    let b:treeShowHelp = 0
    let b:NERDTreeIgnoreEnabled = 1
    let b:NERDTreeShowFiles = g:NERDTreeShowFiles
    let b:NERDTreeShowHidden = g:NERDTreeShowHidden
    let b:NERDTreeShowBookmarks = g:NERDTreeShowBookmarks
    call self._bindMappings()
    setlocal filetype=nerdtree
endfunction

"FUNCTION: s:Creator._setupStatusline() {{{1
function! s:Creator._setupStatusline()
    if g:NERDTreeStatusline != -1
        let &l:statusline = g:NERDTreeStatusline
    endif
endfunction

" FUNCTION: s:Creator._tabpagevar(tabnr, var) {{{1
function! s:Creator._tabpagevar(tabnr, var)
    let currentTab = tabpagenr()
    let old_ei = &ei
    set ei=all

    exec "tabnext " . a:tabnr
    let v = -1
    if exists('t:' . a:var)
        exec 'let v = t:' . a:var
    endif
    exec "tabnext " . currentTab

    let &ei = old_ei

    return v
endfunction

"FUNCTION: s:Creator.TogglePrimary(dir) {{{1
function! s:Creator.TogglePrimary(dir)
    let creator = s:Creator.New()
    call creator.togglePrimary(a:dir)
endfunction

"FUNCTION: s:Creator.togglePrimary(dir) {{{1
"Toggles the NERD tree. I.e the NERD tree is open, it is closed, if it is
"closed it is restored or initialized (if it doesnt exist)
"
"Args:
"dir: the full path for the root node (is only used if the NERD tree is being
"initialized.
function! s:Creator.togglePrimary(dir)
    if g:NERDTree.ExistsForTab()
        if !nerdtree#isTreeOpen()
            call self._createTreeWin()
            if !&hidden
                call b:NERDTree.render()
            endif
            call b:NERDTree.ui.restoreScreenState()
        else
            call nerdtree#closeTree()
        endif
    else
        call self.createPrimary(a:dir)
    endif
endfunction

" Function: s:Creator._uniq(list)   {{{1
" returns a:list without duplicates
function! s:Creator._uniq(list)
  let uniqlist = []
  for elem in a:list
    if index(uniqlist, elem) ==# -1
      let uniqlist += [elem]
    endif
  endfor
  return uniqlist
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                            lib/nerdtree/tree_dir_node.vim                                                                      0000664 0001750 0001750 00000037446 12401543467 017477  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: TreeDirNode
"A subclass of NERDTreeFileNode.
"
"The 'composite' part of the file/dir composite.
"============================================================
let s:TreeDirNode = copy(g:NERDTreeFileNode)
let g:NERDTreeDirNode = s:TreeDirNode

"FUNCTION: TreeDirNode.AbsoluteTreeRoot(){{{1
"class method that returns the highest cached ancestor of the current root
function! s:TreeDirNode.AbsoluteTreeRoot()
    let currentNode = b:NERDTreeRoot
    while currentNode.parent != {}
        let currentNode = currentNode.parent
    endwhile
    return currentNode
endfunction

"FUNCTION: TreeDirNode.activate([options]) {{{1
unlet s:TreeDirNode.activate
function! s:TreeDirNode.activate(...)
    let opts = a:0 ? a:1 : {}
    call self.toggleOpen(opts)
    call b:NERDTree.render()
    call self.putCursorHere(0, 0)
endfunction

"FUNCTION: TreeDirNode.addChild(treenode, inOrder) {{{1
"Adds the given treenode to the list of children for this node
"
"Args:
"-treenode: the node to add
"-inOrder: 1 if the new node should be inserted in sorted order
function! s:TreeDirNode.addChild(treenode, inOrder)
    call add(self.children, a:treenode)
    let a:treenode.parent = self

    if a:inOrder
        call self.sortChildren()
    endif
endfunction

"FUNCTION: TreeDirNode.close() {{{1
"Closes this directory
function! s:TreeDirNode.close()
    let self.isOpen = 0
endfunction

"FUNCTION: TreeDirNode.closeChildren() {{{1
"Closes all the child dir nodes of this node
function! s:TreeDirNode.closeChildren()
    for i in self.children
        if i.path.isDirectory
            call i.close()
            call i.closeChildren()
        endif
    endfor
endfunction

"FUNCTION: TreeDirNode.createChild(path, inOrder) {{{1
"Instantiates a new child node for this node with the given path. The new
"nodes parent is set to this node.
"
"Args:
"path: a Path object that this node will represent/contain
"inOrder: 1 if the new node should be inserted in sorted order
"
"Returns:
"the newly created node
function! s:TreeDirNode.createChild(path, inOrder)
    let newTreeNode = g:NERDTreeFileNode.New(a:path)
    call self.addChild(newTreeNode, a:inOrder)
    return newTreeNode
endfunction

"FUNCTION: TreeDirNode.findNode(path) {{{1
"Will find one of the children (recursively) that has the given path
"
"Args:
"path: a path object
unlet s:TreeDirNode.findNode
function! s:TreeDirNode.findNode(path)
    if a:path.equals(self.path)
        return self
    endif
    if stridx(a:path.str(), self.path.str(), 0) ==# -1
        return {}
    endif

    if self.path.isDirectory
        for i in self.children
            let retVal = i.findNode(a:path)
            if retVal != {}
                return retVal
            endif
        endfor
    endif
    return {}
endfunction

"FUNCTION: TreeDirNode.getChildCount() {{{1
"Returns the number of children this node has
function! s:TreeDirNode.getChildCount()
    return len(self.children)
endfunction

"FUNCTION: TreeDirNode.getChild(path) {{{1
"Returns child node of this node that has the given path or {} if no such node
"exists.
"
"This function doesnt not recurse into child dir nodes
"
"Args:
"path: a path object
function! s:TreeDirNode.getChild(path)
    if stridx(a:path.str(), self.path.str(), 0) ==# -1
        return {}
    endif

    let index = self.getChildIndex(a:path)
    if index ==# -1
        return {}
    else
        return self.children[index]
    endif

endfunction

"FUNCTION: TreeDirNode.getChildByIndex(indx, visible) {{{1
"returns the child at the given index
"Args:
"indx: the index to get the child from
"visible: 1 if only the visible children array should be used, 0 if all the
"children should be searched.
function! s:TreeDirNode.getChildByIndex(indx, visible)
    let array_to_search = a:visible? self.getVisibleChildren() : self.children
    if a:indx > len(array_to_search)
        throw "NERDTree.InvalidArgumentsError: Index is out of bounds."
    endif
    return array_to_search[a:indx]
endfunction

"FUNCTION: TreeDirNode.getChildIndex(path) {{{1
"Returns the index of the child node of this node that has the given path or
"-1 if no such node exists.
"
"This function doesnt not recurse into child dir nodes
"
"Args:
"path: a path object
function! s:TreeDirNode.getChildIndex(path)
    if stridx(a:path.str(), self.path.str(), 0) ==# -1
        return -1
    endif

    "do a binary search for the child
    let a = 0
    let z = self.getChildCount()
    while a < z
        let mid = (a+z)/2
        let diff = a:path.compareTo(self.children[mid].path)

        if diff ==# -1
            let z = mid
        elseif diff ==# 1
            let a = mid+1
        else
            return mid
        endif
    endwhile
    return -1
endfunction

"FUNCTION: TreeDirNode.GetSelected() {{{1
"Returns the current node if it is a dir node, or else returns the current
"nodes parent
unlet s:TreeDirNode.GetSelected
function! s:TreeDirNode.GetSelected()
    let currentDir = g:NERDTreeFileNode.GetSelected()
    if currentDir != {} && !currentDir.isRoot()
        if currentDir.path.isDirectory ==# 0
            let currentDir = currentDir.parent
        endif
    endif
    return currentDir
endfunction

"FUNCTION: TreeDirNode.getVisibleChildCount() {{{1
"Returns the number of visible children this node has
function! s:TreeDirNode.getVisibleChildCount()
    return len(self.getVisibleChildren())
endfunction

"FUNCTION: TreeDirNode.getVisibleChildren() {{{1
"Returns a list of children to display for this node, in the correct order
"
"Return:
"an array of treenodes
function! s:TreeDirNode.getVisibleChildren()
    let toReturn = []
    for i in self.children
        if i.path.ignore() ==# 0
            call add(toReturn, i)
        endif
    endfor
    return toReturn
endfunction

"FUNCTION: TreeDirNode.hasVisibleChildren() {{{1
"returns 1 if this node has any childre, 0 otherwise..
function! s:TreeDirNode.hasVisibleChildren()
    return self.getVisibleChildCount() != 0
endfunction

"FUNCTION: TreeDirNode._initChildren() {{{1
"Removes all childen from this node and re-reads them
"
"Args:
"silent: 1 if the function should not echo any "please wait" messages for
"large directories
"
"Return: the number of child nodes read
function! s:TreeDirNode._initChildren(silent)
    "remove all the current child nodes
    let self.children = []

    "get an array of all the files in the nodes dir
    let dir = self.path
    let globDir = dir.str({'format': 'Glob'})

    if version >= 703
        let filesStr = globpath(globDir, '*', !g:NERDTreeRespectWildIgnore) . "\n" . globpath(globDir, '.*', !g:NERDTreeRespectWildIgnore)
    else
        let filesStr = globpath(globDir, '*') . "\n" . globpath(globDir, '.*')
    endif

    let files = split(filesStr, "\n")

    if !a:silent && len(files) > g:NERDTreeNotificationThreshold
        call nerdtree#echo("Please wait, caching a large dir ...")
    endif

    let invalidFilesFound = 0
    for i in files

        "filter out the .. and . directories
        "Note: we must match .. AND ../ cos sometimes the globpath returns
        "../ for path with strange chars (eg $)
        if i !~# '\/\.\.\/\?$' && i !~# '\/\.\/\?$'

            "put the next file in a new node and attach it
            try
                let path = g:NERDTreePath.New(i)
                call self.createChild(path, 0)
                call g:NERDTreePathNotifier.NotifyListeners('init', path, {})
            catch /^NERDTree.\(InvalidArguments\|InvalidFiletype\)Error/
                let invalidFilesFound += 1
            endtry
        endif
    endfor

    call self.sortChildren()

    if !a:silent && len(files) > g:NERDTreeNotificationThreshold
        call nerdtree#echo("Please wait, caching a large dir ... DONE (". self.getChildCount() ." nodes cached).")
    endif

    if invalidFilesFound
        call nerdtree#echoWarning(invalidFilesFound . " file(s) could not be loaded into the NERD tree")
    endif
    return self.getChildCount()
endfunction

"FUNCTION: TreeDirNode.New(path) {{{1
"Returns a new TreeNode object with the given path and parent
"
"Args:
"path: a path object representing the full filesystem path to the file/dir that the node represents
unlet s:TreeDirNode.New
function! s:TreeDirNode.New(path)
    if a:path.isDirectory != 1
        throw "NERDTree.InvalidArgumentsError: A TreeDirNode object must be instantiated with a directory Path object."
    endif

    let newTreeNode = copy(self)
    let newTreeNode.path = a:path

    let newTreeNode.isOpen = 0
    let newTreeNode.children = []

    let newTreeNode.parent = {}

    return newTreeNode
endfunction

"FUNCTION: TreeDirNode.open([opts]) {{{1
"Open the dir in the current tree or in a new tree elsewhere.
"
"If opening in the current tree, return the number of cached nodes.
unlet s:TreeDirNode.open
function! s:TreeDirNode.open(...)
    let opts = a:0 ? a:1 : {}

    if has_key(opts, 'where') && !empty(opts['where'])
        let opener = g:NERDTreeOpener.New(self.path, opts)
        call opener.open(self)
    else
        let self.isOpen = 1
        if self.children ==# []
            return self._initChildren(0)
        else
            return 0
        endif
    endif
endfunction

"FUNCTION: TreeDirNode.openAlong([opts]) {{{1
"recursive open the dir if it has only one directory child.
"
"return the level of opened directories.
function! s:TreeDirNode.openAlong(...)
    let opts = a:0 ? a:1 : {}
    let level = 0

    let node = self
    while node.path.isDirectory
        call node.open(opts)
        let level += 1
        if node.getVisibleChildCount() == 1
            let node = node.getChildByIndex(0, 1)
        else
            break
        endif
    endwhile
    return level
endfunction

" FUNCTION: TreeDirNode.openExplorer() {{{1
" opens an explorer window for this node in the previous window (could be a
" nerd tree or a netrw)
function! s:TreeDirNode.openExplorer()
    call self.open({'where': 'p'})
endfunction

"FUNCTION: TreeDirNode.openInNewTab(options) {{{1
unlet s:TreeDirNode.openInNewTab
function! s:TreeDirNode.openInNewTab(options)
    call nerdtree#deprecated('TreeDirNode.openInNewTab', 'is deprecated, use open() instead')
    call self.open({'where': 't'})
endfunction

"FUNCTION: TreeDirNode._openInNewTab() {{{1
function! s:TreeDirNode._openInNewTab()
    tabnew
    call g:NERDTreeCreator.CreatePrimary(self.path.str())
endfunction

"FUNCTION: TreeDirNode.openRecursively() {{{1
"Opens this treenode and all of its children whose paths arent 'ignored'
"because of the file filters.
"
"This method is actually a wrapper for the OpenRecursively2 method which does
"the work.
function! s:TreeDirNode.openRecursively()
    call self._openRecursively2(1)
endfunction

"FUNCTION: TreeDirNode._openRecursively2() {{{1
"Opens this all children of this treenode recursively if either:
"   *they arent filtered by file filters
"   *a:forceOpen is 1
"
"Args:
"forceOpen: 1 if this node should be opened regardless of file filters
function! s:TreeDirNode._openRecursively2(forceOpen)
    if self.path.ignore() ==# 0 || a:forceOpen
        let self.isOpen = 1
        if self.children ==# []
            call self._initChildren(1)
        endif

        for i in self.children
            if i.path.isDirectory ==# 1
                call i._openRecursively2(0)
            endif
        endfor
    endif
endfunction

"FUNCTION: TreeDirNode.refresh() {{{1
unlet s:TreeDirNode.refresh
function! s:TreeDirNode.refresh()
    call self.path.refresh()

    "if this node was ever opened, refresh its children
    if self.isOpen || !empty(self.children)
        "go thru all the files/dirs under this node
        let newChildNodes = []
        let invalidFilesFound = 0
        let dir = self.path
        let globDir = dir.str({'format': 'Glob'})
        let filesStr = globpath(globDir, '*') . "\n" . globpath(globDir, '.*')
        let files = split(filesStr, "\n")
        for i in files
            "filter out the .. and . directories
            "Note: we must match .. AND ../ cos sometimes the globpath returns
            "../ for path with strange chars (eg $)
            if i !~# '\/\.\.\/\?$' && i !~# '\/\.\/\?$'

                try
                    "create a new path and see if it exists in this nodes children
                    let path = g:NERDTreePath.New(i)
                    let newNode = self.getChild(path)
                    if newNode != {}
                        call newNode.refresh()
                        call add(newChildNodes, newNode)

                    "the node doesnt exist so create it
                    else
                        let newNode = g:NERDTreeFileNode.New(path)
                        let newNode.parent = self
                        call add(newChildNodes, newNode)
                    endif


                catch /^NERDTree.\(InvalidArguments\|InvalidFiletype\)Error/
                    let invalidFilesFound = 1
                endtry
            endif
        endfor

        "swap this nodes children out for the children we just read/refreshed
        let self.children = newChildNodes
        call self.sortChildren()

        if invalidFilesFound
            call nerdtree#echoWarning("some files could not be loaded into the NERD tree")
        endif
    endif
endfunction

"FUNCTION: TreeDirNode.refreshFlags() {{{1
unlet s:TreeDirNode.refreshFlags
function! s:TreeDirNode.refreshFlags()
    call self.path.refreshFlags()
    for i in self.children
        call i.refreshFlags()
    endfor
endfunction

"FUNCTION: TreeDirNode.refreshDirFlags() {{{1
function! s:TreeDirNode.refreshDirFlags()
    call self.path.refreshFlags()
endfunction

"FUNCTION: TreeDirNode.reveal(path) {{{1
"reveal the given path, i.e. cache and open all treenodes needed to display it
"in the UI
function! s:TreeDirNode.reveal(path)
    if !a:path.isUnder(self.path)
        throw "NERDTree.InvalidArgumentsError: " . a:path.str() . " should be under " . self.path.str()
    endif

    call self.open()

    if self.path.equals(a:path.getParent())
        let n = self.findNode(a:path)
        call b:NERDTree.render()
        call n.putCursorHere(1,0)
        return
    endif

    let p = a:path
    while !p.getParent().equals(self.path)
        let p = p.getParent()
    endwhile

    let n = self.findNode(p)
    call n.reveal(a:path)
endfunction

"FUNCTION: TreeDirNode.removeChild(treenode) {{{1
"
"Removes the given treenode from this nodes set of children
"
"Args:
"treenode: the node to remove
"
"Throws a NERDTree.ChildNotFoundError if the given treenode is not found
function! s:TreeDirNode.removeChild(treenode)
    for i in range(0, self.getChildCount()-1)
        if self.children[i].equals(a:treenode)
            call remove(self.children, i)
            return
        endif
    endfor

    throw "NERDTree.ChildNotFoundError: child node was not found"
endfunction

"FUNCTION: TreeDirNode.sortChildren() {{{1
"
"Sorts the children of this node according to alphabetical order and the
"directory priority.
"
function! s:TreeDirNode.sortChildren()
    let CompareFunc = function("nerdtree#compareNodes")
    call sort(self.children, CompareFunc)
endfunction

"FUNCTION: TreeDirNode.toggleOpen([options]) {{{1
"Opens this directory if it is closed and vice versa
function! s:TreeDirNode.toggleOpen(...)
    let opts = a:0 ? a:1 : {}
    if self.isOpen ==# 1
        call self.close()
    else
        if g:NERDTreeCascadeOpenSingleChildDir == 0
            call self.open(opts)
        else
            call self.openAlong(opts)
        endif
    endif
endfunction

"FUNCTION: TreeDirNode.transplantChild(newNode) {{{1
"Replaces the child of this with the given node (where the child node's full
"path matches a:newNode's fullpath). The search for the matching node is
"non-recursive
"
"Arg:
"newNode: the node to graft into the tree
function! s:TreeDirNode.transplantChild(newNode)
    for i in range(0, self.getChildCount()-1)
        if self.children[i].equals(a:newNode)
            let self.children[i] = a:newNode
            let a:newNode.parent = self
            break
        endif
    endfor
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                          lib/nerdtree/ui.vim                                                                                 0000664 0001750 0001750 00000023206 12401543467 015277  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: UI
"============================================================
let s:UI = {}
let g:NERDTreeUI = s:UI


function! s:UI.lolcats()
    echomsg "lolcats"
endfunction

"FUNCTION: s:UI.centerView() {{{2
"centers the nerd tree window around the cursor (provided the nerd tree
"options permit)
function! s:UI.centerView()
    if g:NERDTreeAutoCenter
        let current_line = winline()
        let lines_to_top = current_line
        let lines_to_bottom = winheight(nerdtree#getTreeWinNum()) - current_line
        if lines_to_top < g:NERDTreeAutoCenterThreshold || lines_to_bottom < g:NERDTreeAutoCenterThreshold
            normal! zz
        endif
    endif
endfunction

"FUNCTION: s:UI.new(nerdtree) {{{1
function! s:UI.New(nerdtree)
    let newObj = copy(self)
    let newObj.nerdtree = a:nerdtree
    return newObj
endfunction

"FUNCTION: s:UI.getPath(ln) {{{1
"Gets the full path to the node that is rendered on the given line number
"
"Args:
"ln: the line number to get the path for
"
"Return:
"A path if a node was selected, {} if nothing is selected.
"If the 'up a dir' line was selected then the path to the parent of the
"current root is returned
function! s:UI.getPath(ln)
    let line = getline(a:ln)

    let rootLine = self.getRootLineNum()

    "check to see if we have the root node
    if a:ln == rootLine
        return b:NERDTreeRoot.path
    endif

    if !g:NERDTreeDirArrows
        " in case called from outside the tree
        if line !~# '^ *[|`▸▾ ]' || line =~# '^$'
            return {}
        endif
    endif

    if line ==# nerdtree#treeUpDirLine()
        return b:NERDTreeRoot.path.getParent()
    endif

    let indent = self._indentLevelFor(line)

    "remove the tree parts and the leading space
    let curFile = nerdtree#stripMarkupFromLine(line, 0)

    let wasdir = 0
    if curFile =~# '/$'
        let wasdir = 1
        let curFile = substitute(curFile, '/\?$', '/', "")
    endif

    let dir = ""
    let lnum = a:ln
    while lnum > 0
        let lnum = lnum - 1
        let curLine = getline(lnum)
        let curLineStripped = nerdtree#stripMarkupFromLine(curLine, 1)

        "have we reached the top of the tree?
        if lnum == rootLine
            let dir = b:NERDTreeRoot.path.str({'format': 'UI'}) . dir
            break
        endif
        if curLineStripped =~# '/$'
            let lpindent = self._indentLevelFor(curLine)
            if lpindent < indent
                let indent = indent - 1

                let dir = substitute (curLineStripped,'^\\', "", "") . dir
                continue
            endif
        endif
    endwhile
    let curFile = b:NERDTreeRoot.path.drive . dir . curFile
    let toReturn = g:NERDTreePath.New(curFile)
    return toReturn
endfunction

"FUNCTION: s:UI.getLineNum(file_node){{{1
"returns the line number this node is rendered on, or -1 if it isnt rendered
function! s:UI.getLineNum(file_node)
    "if the node is the root then return the root line no.
    if a:file_node.isRoot()
        return b:NERDTree.ui.getRootLineNum()
    endif

    let totalLines = line("$")

    "the path components we have matched so far
    let pathcomponents = [substitute(b:NERDTreeRoot.path.str({'format': 'UI'}), '/ *$', '', '')]
    "the index of the component we are searching for
    let curPathComponent = 1

    let fullpath = a:file_node.path.str({'format': 'UI'})

    let lnum = b:NERDTree.ui.getRootLineNum()
    while lnum > 0
        let lnum = lnum + 1
        "have we reached the bottom of the tree?
        if lnum ==# totalLines+1
            return -1
        endif

        let curLine = getline(lnum)

        let indent = self._indentLevelFor(curLine)
        if indent ==# curPathComponent
            let curLine = nerdtree#stripMarkupFromLine(curLine, 1)

            let curPath =  join(pathcomponents, '/') . '/' . curLine
            if stridx(fullpath, curPath, 0) ==# 0
                if fullpath ==# curPath || strpart(fullpath, len(curPath)-1,1) ==# '/'
                    let curLine = substitute(curLine, '/ *$', '', '')
                    call add(pathcomponents, curLine)
                    let curPathComponent = curPathComponent + 1

                    if fullpath ==# curPath
                        return lnum
                    endif
                endif
            endif
        endif
    endwhile
    return -1
endfunction


"FUNCTION: s:UI.getRootLineNum(){{{1
"gets the line number of the root node
function! s:UI.getRootLineNum()
    let rootLine = 1
    while getline(rootLine) !~# '^\(/\|<\)'
        let rootLine = rootLine + 1
    endwhile
    return rootLine
endfunction

"FUNCTION: s:UI._indentLevelFor(line) {{{2
function! s:UI._indentLevelFor(line)
    let level = match(a:line, '[^ \-+~▸▾`|]') / nerdtree#treeWid()
    " check if line includes arrows
    if match(a:line, '[▸▾]') > -1
        " decrement level as arrow uses 3 ascii chars
        let level = level - 1
    endif
    return level
endfunction


"FUNCTION: s:UI.restoreScreenState() {{{2
"
"Sets the screen state back to what it was when nerdtree#saveScreenState was last
"called.
"
"Assumes the cursor is in the NERDTree window
function! s:UI.restoreScreenState()
    if !has_key(self, '_screenState')
        return
    endif
    exec("silent vertical resize " . self._screenState['oldWindowSize'])

    let old_scrolloff=&scrolloff
    let &scrolloff=0
    call cursor(self._screenState['oldTopLine'], 0)
    normal! zt
    call setpos(".", self._screenState['oldPos'])
    let &scrolloff=old_scrolloff
endfunction

"FUNCTION: s:UI.saveScreenState() {{{2
"Saves the current cursor position in the current buffer and the window
"scroll position
function! s:UI.saveScreenState()
    let win = winnr()
    try
        call nerdtree#putCursorInTreeWin()
        let self._screenState = {}
        let self._screenState['oldPos'] = getpos(".")
        let self._screenState['oldTopLine'] = line("w0")
        let self._screenState['oldWindowSize']= winwidth("")
        call nerdtree#exec(win . "wincmd w")
    catch /^NERDTree.InvalidOperationError/
    endtry
endfunction

"FUNCTION: s:UI.render() {{{2
function! s:UI.render()
    setlocal modifiable

    "remember the top line of the buffer and the current line so we can
    "restore the view exactly how it was
    let curLine = line(".")
    let curCol = col(".")
    let topLine = line("w0")

    "delete all lines in the buffer (being careful not to clobber a register)
    silent 1,$delete _

    call nerdtree#dumpHelp()

    "delete the blank line before the help and add one after it
    if g:NERDTreeMinimalUI == 0
        call setline(line(".")+1, "")
        call cursor(line(".")+1, col("."))
    endif

    if b:NERDTreeShowBookmarks
        call nerdtree#renderBookmarks()
    endif

    "add the 'up a dir' line
    if !g:NERDTreeMinimalUI
        call setline(line(".")+1, nerdtree#treeUpDirLine())
        call cursor(line(".")+1, col("."))
    endif

    "draw the header line
    let header = b:NERDTreeRoot.path.str({'format': 'UI', 'truncateTo': winwidth(0)})
    call setline(line(".")+1, header)
    call cursor(line(".")+1, col("."))

    "draw the tree
    let old_o = @o
    let @o = b:NERDTreeRoot.renderToString()
    silent put o
    let @o = old_o

    "delete the blank line at the top of the buffer
    silent 1,1delete _

    "restore the view
    let old_scrolloff=&scrolloff
    let &scrolloff=0
    call cursor(topLine, 1)
    normal! zt
    call cursor(curLine, curCol)
    let &scrolloff = old_scrolloff

    setlocal nomodifiable
endfunction


"FUNCTION: UI.renderViewSavingPosition {{{1
"Renders the tree and ensures the cursor stays on the current node or the
"current nodes parent if it is no longer available upon re-rendering
function! s:UI.renderViewSavingPosition()
    let currentNode = g:NERDTreeFileNode.GetSelected()

    "go up the tree till we find a node that will be visible or till we run
    "out of nodes
    while currentNode != {} && !currentNode.isVisible() && !currentNode.isRoot()
        let currentNode = currentNode.parent
    endwhile

    call b:NERDTree.render()

    if currentNode != {}
        call currentNode.putCursorHere(0, 0)
    endif
endfunction

" FUNCTION: s:UI.toggleIgnoreFilter() {{{1
" toggles the use of the NERDTreeIgnore option
function! s:UI.toggleIgnoreFilter()
    let b:NERDTreeIgnoreEnabled = !b:NERDTreeIgnoreEnabled
    call b:NERDTree.ui.renderViewSavingPosition()
    call b:NERDTree.ui.centerView()
endfunction

" FUNCTION: s:UI.toggleShowBookmarks() {{{1
" toggles the display of bookmarks
function! s:UI.toggleShowBookmarks()
    let b:NERDTreeShowBookmarks = !b:NERDTreeShowBookmarks
    if b:NERDTreeShowBookmarks
        call b:NERDTree.render()
        call nerdtree#putCursorOnBookmarkTable()
    else
        call b:NERDTree.ui.renderViewSavingPosition()
    endif
    call b:NERDTree.ui.centerView()
endfunction

" FUNCTION: s:UI.toggleShowFiles() {{{1
" toggles the display of hidden files
function! s:UI.toggleShowFiles()
    let b:NERDTreeShowFiles = !b:NERDTreeShowFiles
    call b:NERDTree.ui.renderViewSavingPosition()
    call b:NERDTree.ui.centerView()
endfunction

" FUNCTION: s:UI.toggleShowHidden() {{{1
" toggles the display of hidden files
function! s:UI.toggleShowHidden()
    let b:NERDTreeShowHidden = !b:NERDTreeShowHidden
    call b:NERDTree.ui.renderViewSavingPosition()
    call self.centerView()
endfunction

" FUNCTION: s:UI.toggleZoom() {{{1
" zoom (maximize/minimize) the NERDTree window
function! s:UI.toggleZoom()
    if exists("b:NERDTreeZoomed") && b:NERDTreeZoomed
        let size = exists("b:NERDTreeOldWindowSize") ? b:NERDTreeOldWindowSize : g:NERDTreeWinSize
        exec "silent vertical resize ". size
        let b:NERDTreeZoomed = 0
    else
        exec "vertical resize"
        let b:NERDTreeZoomed = 1
    endif
endfunction
                                                                                                                                                                                                                                                                                                                                                                                          lib/nerdtree/opener.vim                                                                             0000664 0001750 0001750 00000023052 12401543467 016151  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: Opener
"============================================================
let s:Opener = {}
let g:NERDTreeOpener = s:Opener

"FUNCTION: s:Opener._bufInWindows(bnum){{{1
"[[STOLEN FROM VTREEEXPLORER.VIM]]
"Determine the number of windows open to this buffer number.
"Care of Yegappan Lakshman.  Thanks!
"
"Args:
"bnum: the subject buffers buffer number
function! s:Opener._bufInWindows(bnum)
    let cnt = 0
    let winnum = 1
    while 1
        let bufnum = winbufnr(winnum)
        if bufnum < 0
            break
        endif
        if bufnum ==# a:bnum
            let cnt = cnt + 1
        endif
        let winnum = winnum + 1
    endwhile

    return cnt
endfunction
"FUNCTION: Opener._checkToCloseTree(newtab) {{{1
"Check the class options and global options (i.e. NERDTreeQuitOnOpen) to see
"if the tree should be closed now.
"
"Args:
"a:newtab - boolean. If set, only close the tree now if we are opening the
"target in a new tab. This is needed because we have to close tree before we
"leave the tab
function! s:Opener._checkToCloseTree(newtab)
    if self._keepopen
        return
    endif

    if (a:newtab && self._where == 't') || !a:newtab
        call nerdtree#closeTreeIfQuitOnOpen()
    endif
endfunction


"FUNCTION: s:Opener._firstUsableWindow(){{{1
"find the window number of the first normal window
function! s:Opener._firstUsableWindow()
    let i = 1
    while i <= winnr("$")
        let bnum = winbufnr(i)
        if bnum != -1 && getbufvar(bnum, '&buftype') ==# ''
                    \ && !getwinvar(i, '&previewwindow')
                    \ && (!getbufvar(bnum, '&modified') || &hidden)
            return i
        endif

        let i += 1
    endwhile
    return -1
endfunction

"FUNCTION: Opener._gotoTargetWin() {{{1
function! s:Opener._gotoTargetWin()
    if b:NERDTreeType ==# "secondary"
        if self._where == 'v'
            vsplit
        elseif self._where == 'h'
            split
        elseif self._where == 't'
            tabnew
        endif
    else
        call self._checkToCloseTree(1)

        if self._where == 'v'
            call self._newVSplit()
        elseif self._where == 'h'
            call self._newSplit()
        elseif self._where == 't'
            tabnew
        elseif self._where == 'p'
            call self._previousWindow()
        endif

        call self._checkToCloseTree(0)
    endif
endfunction

"FUNCTION: s:Opener._isWindowUsable(winnumber) {{{1
"Returns 0 if opening a file from the tree in the given window requires it to
"be split, 1 otherwise
"
"Args:
"winnumber: the number of the window in question
function! s:Opener._isWindowUsable(winnumber)
    "gotta split if theres only one window (i.e. the NERD tree)
    if winnr("$") ==# 1
        return 0
    endif

    let oldwinnr = winnr()
    call nerdtree#exec(a:winnumber . "wincmd p")
    let specialWindow = getbufvar("%", '&buftype') != '' || getwinvar('%', '&previewwindow')
    let modified = &modified
    call nerdtree#exec(oldwinnr . "wincmd p")

    "if its a special window e.g. quickfix or another explorer plugin then we
    "have to split
    if specialWindow
        return 0
    endif

    if &hidden
        return 1
    endif

    return !modified || self._bufInWindows(winbufnr(a:winnumber)) >= 2
endfunction

"FUNCTION: Opener.New(path, opts) {{{1
"Args:
"
"a:path: The path object that is to be opened.
"
"a:opts:
"
"A dictionary containing the following keys (all optional):
"  'where': Specifies whether the node should be opened in new split/tab or in
"           the previous window. Can be either 'v' or 'h' or 't' (for open in
"           new tab)
"  'reuse': if a window is displaying the file then jump the cursor there
"  'keepopen': dont close the tree window
"  'stay': open the file, but keep the cursor in the tree win
function! s:Opener.New(path, opts)
    let newObj = copy(self)

    let newObj._path = a:path
    let newObj._stay = nerdtree#has_opt(a:opts, 'stay')
    let newObj._reuse = nerdtree#has_opt(a:opts, 'reuse')
    let newObj._keepopen = nerdtree#has_opt(a:opts, 'keepopen')
    let newObj._where = has_key(a:opts, 'where') ? a:opts['where'] : ''
    let newObj._treetype = b:NERDTreeType
    call newObj._saveCursorPos()

    return newObj
endfunction

"FUNCTION: Opener._newSplit() {{{1
function! s:Opener._newSplit()
    " Save the user's settings for splitbelow and splitright
    let savesplitbelow=&splitbelow
    let savesplitright=&splitright

    " 'there' will be set to a command to move from the split window
    " back to the explorer window
    "
    " 'back' will be set to a command to move from the explorer window
    " back to the newly split window
    "
    " 'right' and 'below' will be set to the settings needed for
    " splitbelow and splitright IF the explorer is the only window.
    "
    let there= g:NERDTreeWinPos ==# "left" ? "wincmd h" : "wincmd l"
    let back = g:NERDTreeWinPos ==# "left" ? "wincmd l" : "wincmd h"
    let right= g:NERDTreeWinPos ==# "left"
    let below=0

    " Attempt to go to adjacent window
    call nerdtree#exec(back)

    let onlyOneWin = (winnr("$") ==# 1)

    " If no adjacent window, set splitright and splitbelow appropriately
    if onlyOneWin
        let &splitright=right
        let &splitbelow=below
    else
        " found adjacent window - invert split direction
        let &splitright=!right
        let &splitbelow=!below
    endif

    let splitMode = onlyOneWin ? "vertical" : ""

    " Open the new window
    try
        exec(splitMode." sp ")
    catch /^Vim\%((\a\+)\)\=:E37/
        call nerdtree#putCursorInTreeWin()
        throw "NERDTree.FileAlreadyOpenAndModifiedError: ". self._path.str() ." is already open and modified."
    catch /^Vim\%((\a\+)\)\=:/
        "do nothing
    endtry

    "resize the tree window if no other window was open before
    if onlyOneWin
        let size = exists("b:NERDTreeOldWindowSize") ? b:NERDTreeOldWindowSize : g:NERDTreeWinSize
        call nerdtree#exec(there)
        exec("silent ". splitMode ." resize ". size)
        call nerdtree#exec('wincmd p')
    endif

    " Restore splitmode settings
    let &splitbelow=savesplitbelow
    let &splitright=savesplitright
endfunction

"FUNCTION: Opener._newVSplit() {{{1
function! s:Opener._newVSplit()
    let winwidth = winwidth(".")
    if winnr("$")==#1
        let winwidth = g:NERDTreeWinSize
    endif

    call nerdtree#exec("wincmd p")
    vnew

    "resize the nerd tree back to the original size
    call nerdtree#putCursorInTreeWin()
    exec("silent vertical resize ". winwidth)
    call nerdtree#exec('wincmd p')
endfunction

"FUNCTION: Opener.open(target) {{{1
function! s:Opener.open(target)
    if self._path.isDirectory
        call self._openDirectory(a:target)
    else
        call self._openFile()
    endif
endfunction

"FUNCTION: Opener._openFile() {{{1
function! s:Opener._openFile()
    if self._reuse && self._reuseWindow()
        return
    endif

    call self._gotoTargetWin()

    if self._treetype ==# "secondary"
        call self._path.edit()
    else
        call self._path.edit()


        if self._stay
            call self._restoreCursorPos()
        endif
    endif
endfunction

"FUNCTION: Opener._openDirectory(node) {{{1
function! s:Opener._openDirectory(node)
    if self._treetype ==# "secondary"
        call self._gotoTargetWin()
        call g:NERDTreeCreator.CreateSecondary(a:node.path.str())
    else
        call self._gotoTargetWin()
        if empty(self._where)
            call a:node.makeRoot()
            call b:NERDTree.render()
            call a:node.putCursorHere(0, 0)
        elseif self._where == 't'
            call g:NERDTreeCreator.CreatePrimary(a:node.path.str())
        else
            call g:NERDTreeCreator.CreateSecondary(a:node.path.str())
        endif
    endif

    if self._stay
        call self._restoreCursorPos()
    endif
endfunction

"FUNCTION: Opener._previousWindow() {{{1
function! s:Opener._previousWindow()
    if !self._isWindowUsable(winnr("#")) && self._firstUsableWindow() ==# -1
        call self._newSplit()
    else
        try
            if !self._isWindowUsable(winnr("#"))
                call nerdtree#exec(self._firstUsableWindow() . "wincmd w")
            else
                call nerdtree#exec('wincmd p')
            endif
        catch /^Vim\%((\a\+)\)\=:E37/
            call nerdtree#putCursorInTreeWin()
            throw "NERDTree.FileAlreadyOpenAndModifiedError: ". self._path.str() ." is already open and modified."
        catch /^Vim\%((\a\+)\)\=:/
            echo v:exception
        endtry
    endif
endfunction

"FUNCTION: Opener._restoreCursorPos(){{{1
function! s:Opener._restoreCursorPos()
    call nerdtree#exec('normal ' . self._tabnr . 'gt')
    call nerdtree#exec(bufwinnr(self._bufnr) . 'wincmd w')
endfunction

"FUNCTION: Opener._reuseWindow(){{{1
"put the cursor in the first window we find for this file
"
"return 1 if we were successful
function! s:Opener._reuseWindow()
    "check the current tab for the window
    let winnr = bufwinnr('^' . self._path.str() . '$')
    if winnr != -1
        call nerdtree#exec(winnr . "wincmd w")
        call self._checkToCloseTree(0)
        return 1
    else
        "check other tabs
        let tabnr = self._path.tabnr()
        if tabnr
            call self._checkToCloseTree(1)
            call nerdtree#exec('normal! ' . tabnr . 'gt')
            let winnr = bufwinnr('^' . self._path.str() . '$')
            call nerdtree#exec(winnr . "wincmd w")
            return 1
        endif
    endif
    return 0
endfunction

"FUNCTION: Opener._saveCursorPos(){{{1
function! s:Opener._saveCursorPos()
    let self._bufnr = bufnr("")
    let self._tabnr = tabpagenr()
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      lib/nerdtree/bookmark.vim                                                                           0000664 0001750 0001750 00000024404 12401543467 016470  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: Bookmark
"============================================================
let s:Bookmark = {}
let g:NERDTreeBookmark = s:Bookmark

" FUNCTION: Bookmark.activate() {{{1
function! s:Bookmark.activate(...)
    call self.open(a:0 ? a:1 : {})
endfunction

" FUNCTION: Bookmark.AddBookmark(name, path) {{{1
" Class method to add a new bookmark to the list, if a previous bookmark exists
" with the same name, just update the path for that bookmark
function! s:Bookmark.AddBookmark(name, path)
    for i in s:Bookmark.Bookmarks()
        if i.name ==# a:name
            let i.path = a:path
            return
        endif
    endfor
    call add(s:Bookmark.Bookmarks(), s:Bookmark.New(a:name, a:path))
    if g:NERDTreeBookmarksSort ==# 1
        call s:Bookmark.Sort()
    endif
endfunction

" FUNCTION: Bookmark.Bookmarks()   {{{1
" Class method to get all bookmarks. Lazily initializes the bookmarks global
" variable
function! s:Bookmark.Bookmarks()
    if !exists("g:NERDTreeBookmarks")
        let g:NERDTreeBookmarks = []
    endif
    return g:NERDTreeBookmarks
endfunction

" FUNCTION: Bookmark.BookmarkExistsFor(name)   {{{1
" class method that returns 1 if a bookmark with the given name is found, 0
" otherwise
function! s:Bookmark.BookmarkExistsFor(name)
    try
        call s:Bookmark.BookmarkFor(a:name)
        return 1
    catch /^NERDTree.BookmarkNotFoundError/
        return 0
    endtry
endfunction

" FUNCTION: Bookmark.BookmarkFor(name)   {{{1
" Class method to get the bookmark that has the given name. {} is return if no
" bookmark is found
function! s:Bookmark.BookmarkFor(name)
    for i in s:Bookmark.Bookmarks()
        if i.name ==# a:name
            return i
        endif
    endfor
    throw "NERDTree.BookmarkNotFoundError: no bookmark found for name: \"". a:name  .'"'
endfunction

" FUNCTION: Bookmark.BookmarkNames()   {{{1
" Class method to return an array of all bookmark names
function! s:Bookmark.BookmarkNames()
    let names = []
    for i in s:Bookmark.Bookmarks()
        call add(names, i.name)
    endfor
    return names
endfunction

" FUNCTION: Bookmark.CacheBookmarks(silent) {{{1
" Class method to read all bookmarks from the bookmarks file initialize
" bookmark objects for each one.
"
" Args:
" silent - dont echo an error msg if invalid bookmarks are found
function! s:Bookmark.CacheBookmarks(silent)
    if filereadable(g:NERDTreeBookmarksFile)
        let g:NERDTreeBookmarks = []
        let g:NERDTreeInvalidBookmarks = []
        let bookmarkStrings = readfile(g:NERDTreeBookmarksFile)
        let invalidBookmarksFound = 0
        for i in bookmarkStrings

            "ignore blank lines
            if i != ''

                let name = substitute(i, '^\(.\{-}\) .*$', '\1', '')
                let path = substitute(i, '^.\{-} \(.*\)$', '\1', '')

                try
                    let bookmark = s:Bookmark.New(name, g:NERDTreePath.New(path))
                    call add(g:NERDTreeBookmarks, bookmark)
                catch /^NERDTree.InvalidArgumentsError/
                    call add(g:NERDTreeInvalidBookmarks, i)
                    let invalidBookmarksFound += 1
                endtry
            endif
        endfor
        if invalidBookmarksFound
            call s:Bookmark.Write()
            if !a:silent
                call nerdtree#echo(invalidBookmarksFound . " invalid bookmarks were read. See :help NERDTreeInvalidBookmarks for info.")
            endif
        endif
        if g:NERDTreeBookmarksSort ==# 1
            call s:Bookmark.Sort()
        endif
    endif
endfunction

" FUNCTION: Bookmark.compareTo(otherbookmark) {{{1
" Compare these two bookmarks for sorting purposes
function! s:Bookmark.compareTo(otherbookmark)
    return a:otherbookmark.name < self.name
endfunction
" FUNCTION: Bookmark.ClearAll() {{{1
" Class method to delete all bookmarks.
function! s:Bookmark.ClearAll()
    for i in s:Bookmark.Bookmarks()
        call i.delete()
    endfor
    call s:Bookmark.Write()
endfunction

" FUNCTION: Bookmark.delete() {{{1
" Delete this bookmark. If the node for this bookmark is under the current
" root, then recache bookmarks for its Path object
function! s:Bookmark.delete()
    let node = {}
    try
        let node = self.getNode(1)
    catch /^NERDTree.BookmarkedNodeNotFoundError/
    endtry
    call remove(s:Bookmark.Bookmarks(), index(s:Bookmark.Bookmarks(), self))
    if !empty(node)
        call node.path.cacheDisplayString()
    endif
    call s:Bookmark.Write()
endfunction

" FUNCTION: Bookmark.getNode(searchFromAbsoluteRoot) {{{1
" Gets the treenode for this bookmark
"
" Args:
" searchFromAbsoluteRoot: specifies whether we should search from the current
" tree root, or the highest cached node
function! s:Bookmark.getNode(searchFromAbsoluteRoot)
    let searchRoot = a:searchFromAbsoluteRoot ? g:NERDTreeDirNode.AbsoluteTreeRoot() : b:NERDTreeRoot
    let targetNode = searchRoot.findNode(self.path)
    if empty(targetNode)
        throw "NERDTree.BookmarkedNodeNotFoundError: no node was found for bookmark: " . self.name
    endif
    return targetNode
endfunction

" FUNCTION: Bookmark.GetNodeForName(name, searchFromAbsoluteRoot) {{{1
" Class method that finds the bookmark with the given name and returns the
" treenode for it.
function! s:Bookmark.GetNodeForName(name, searchFromAbsoluteRoot)
    let bookmark = s:Bookmark.BookmarkFor(a:name)
    return bookmark.getNode(a:searchFromAbsoluteRoot)
endfunction

" FUNCTION: Bookmark.GetSelected() {{{1
" returns the Bookmark the cursor is over, or {}
function! s:Bookmark.GetSelected()
    let line = getline(".")
    let name = substitute(line, '^>\(.\{-}\) .\+$', '\1', '')
    if name != line
        try
            return s:Bookmark.BookmarkFor(name)
        catch /^NERDTree.BookmarkNotFoundError/
            return {}
        endtry
    endif
    return {}
endfunction

" FUNCTION: Bookmark.InvalidBookmarks()   {{{1
" Class method to get all invalid bookmark strings read from the bookmarks
" file
function! s:Bookmark.InvalidBookmarks()
    if !exists("g:NERDTreeInvalidBookmarks")
        let g:NERDTreeInvalidBookmarks = []
    endif
    return g:NERDTreeInvalidBookmarks
endfunction

" FUNCTION: Bookmark.mustExist() {{{1
function! s:Bookmark.mustExist()
    if !self.path.exists()
        call s:Bookmark.CacheBookmarks(1)
        throw "NERDTree.BookmarkPointsToInvalidLocationError: the bookmark \"".
            \ self.name ."\" points to a non existing location: \"". self.path.str()
    endif
endfunction

" FUNCTION: Bookmark.New(name, path) {{{1
" Create a new bookmark object with the given name and path object
function! s:Bookmark.New(name, path)
    if a:name =~# ' '
        throw "NERDTree.IllegalBookmarkNameError: illegal name:" . a:name
    endif

    let newBookmark = copy(self)
    let newBookmark.name = a:name
    let newBookmark.path = a:path
    return newBookmark
endfunction

" FUNCTION: Bookmark.open([options]) {{{1
"Args:
"A dictionary containing the following keys (all optional):
"  'where': Specifies whether the node should be opened in new split/tab or in
"           the previous window. Can be either 'v' (vertical split), 'h'
"           (horizontal split), 't' (new tab) or 'p' (previous window).
"  'reuse': if a window is displaying the file then jump the cursor there
"  'keepopen': dont close the tree window
"  'stay': open the file, but keep the cursor in the tree win
"
function! s:Bookmark.open(...)
    let opts = a:0 ? a:1 : {}

    if self.path.isDirectory && !has_key(opts, 'where')
        call self.toRoot()
    else
        let opener = g:NERDTreeOpener.New(self.path, opts)
        call opener.open(self)
    endif
endfunction

" FUNCTION: Bookmark.openInNewTab(options) {{{1
" Create a new bookmark object with the given name and path object
function! s:Bookmark.openInNewTab(options)
    call nerdtree#deprecated('Bookmark.openInNewTab', 'is deprecated, use open() instead')
    call self.open(a:options)
endfunction

" FUNCTION: Bookmark.setPath(path)   {{{1
" makes this bookmark point to the given path
function! s:Bookmark.setPath(path)
    let self.path = a:path
endfunction

" FUNCTION: Bookmark.Sort()   {{{1
" Class method that sorts all bookmarks
function! s:Bookmark.Sort()
    let CompareFunc = function("nerdtree#compareBookmarks")
    call sort(s:Bookmark.Bookmarks(), CompareFunc)
endfunction

" FUNCTION: Bookmark.str()   {{{1
" Get the string that should be rendered in the view for this bookmark
function! s:Bookmark.str()
    let pathStrMaxLen = winwidth(nerdtree#getTreeWinNum()) - 4 - len(self.name)
    if &nu
        let pathStrMaxLen = pathStrMaxLen - &numberwidth
    endif

    let pathStr = self.path.str({'format': 'UI'})
    if len(pathStr) > pathStrMaxLen
        let pathStr = '<' . strpart(pathStr, len(pathStr) - pathStrMaxLen)
    endif
    return '>' . self.name . ' ' . pathStr
endfunction

" FUNCTION: Bookmark.toRoot() {{{1
" Make the node for this bookmark the new tree root
function! s:Bookmark.toRoot()
    if self.validate()
        try
            let targetNode = self.getNode(1)
        catch /^NERDTree.BookmarkedNodeNotFoundError/
            let targetNode = g:NERDTreeFileNode.New(s:Bookmark.BookmarkFor(self.name).path)
        endtry
        call targetNode.makeRoot()
        call b:NERDTree.render()
        call targetNode.putCursorHere(0, 0)
    endif
endfunction

" FUNCTION: Bookmark.ToRoot(name) {{{1
" Make the node for this bookmark the new tree root
function! s:Bookmark.ToRoot(name)
    let bookmark = s:Bookmark.BookmarkFor(a:name)
    call bookmark.toRoot()
endfunction

" FUNCTION: Bookmark.validate() {{{1
function! s:Bookmark.validate()
    if self.path.exists()
        return 1
    else
        call s:Bookmark.CacheBookmarks(1)
        call b:NERDTree.render()
        call nerdtree#echo(self.name . "now points to an invalid location. See :help NERDTreeInvalidBookmarks for info.")
        return 0
    endif
endfunction

" FUNCTION: Bookmark.Write()   {{{1
" Class method to write all bookmarks to the bookmarks file
function! s:Bookmark.Write()
    let bookmarkStrings = []
    for i in s:Bookmark.Bookmarks()
        call add(bookmarkStrings, i.name . ' ' . i.path.str())
    endfor

    "add a blank line before the invalid ones
    call add(bookmarkStrings, "")

    for j in s:Bookmark.InvalidBookmarks()
        call add(bookmarkStrings, j)
    endfor
    call writefile(bookmarkStrings, g:NERDTreeBookmarksFile)
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                                                            lib/nerdtree/menu_controller.vim                                                                    0000664 0001750 0001750 00000012050 12401543467 020064  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: MenuController
"============================================================
let s:MenuController = {}
let g:NERDTreeMenuController = s:MenuController

"FUNCTION: MenuController.New(menuItems) {{{1
"create a new menu controller that operates on the given menu items
function! s:MenuController.New(menuItems)
    let newMenuController =  copy(self)
    if a:menuItems[0].isSeparator()
        let newMenuController.menuItems = a:menuItems[1:-1]
    else
        let newMenuController.menuItems = a:menuItems
    endif
    return newMenuController
endfunction

"FUNCTION: MenuController.showMenu() {{{1
"start the main loop of the menu and get the user to choose/execute a menu
"item
function! s:MenuController.showMenu()
    call self._saveOptions()

    try
        let self.selection = 0

        let done = 0
        while !done
            redraw!
            call self._echoPrompt()
            let key = nr2char(getchar())
            let done = self._handleKeypress(key)
        endwhile
    finally
        call self._restoreOptions()
    endtry

    if self.selection != -1
        let m = self._current()
        call m.execute()
    endif
endfunction

"FUNCTION: MenuController._echoPrompt() {{{1
function! s:MenuController._echoPrompt()
    echo "NERDTree Menu. Use j/k/enter and the shortcuts indicated"
    echo "=========================================================="

    for i in range(0, len(self.menuItems)-1)
        if self.selection == i
            echo "> " . self.menuItems[i].text
        else
            echo "  " . self.menuItems[i].text
        endif
    endfor
endfunction

"FUNCTION: MenuController._current(key) {{{1
"get the MenuItem that is currently selected
function! s:MenuController._current()
    return self.menuItems[self.selection]
endfunction

"FUNCTION: MenuController._handleKeypress(key) {{{1
"change the selection (if appropriate) and return 1 if the user has made
"their choice, 0 otherwise
function! s:MenuController._handleKeypress(key)
    if a:key == 'j'
        call self._cursorDown()
    elseif a:key == 'k'
        call self._cursorUp()
    elseif a:key == nr2char(27) "escape
        let self.selection = -1
        return 1
    elseif a:key == "\r" || a:key == "\n" "enter and ctrl-j
        return 1
    else
        let index = self._nextIndexFor(a:key)
        if index != -1
            let self.selection = index
            if len(self._allIndexesFor(a:key)) == 1
                return 1
            endif
        endif
    endif

    return 0
endfunction

"FUNCTION: MenuController._allIndexesFor(shortcut) {{{1
"get indexes to all menu items with the given shortcut
function! s:MenuController._allIndexesFor(shortcut)
    let toReturn = []

    for i in range(0, len(self.menuItems)-1)
        if self.menuItems[i].shortcut == a:shortcut
            call add(toReturn, i)
        endif
    endfor

    return toReturn
endfunction

"FUNCTION: MenuController._nextIndexFor(shortcut) {{{1
"get the index to the next menu item with the given shortcut, starts from the
"current cursor location and wraps around to the top again if need be
function! s:MenuController._nextIndexFor(shortcut)
    for i in range(self.selection+1, len(self.menuItems)-1)
        if self.menuItems[i].shortcut == a:shortcut
            return i
        endif
    endfor

    for i in range(0, self.selection)
        if self.menuItems[i].shortcut == a:shortcut
            return i
        endif
    endfor

    return -1
endfunction

"FUNCTION: MenuController._setCmdheight() {{{1
"sets &cmdheight to whatever is needed to display the menu
function! s:MenuController._setCmdheight()
    let &cmdheight = len(self.menuItems) + 3
endfunction

"FUNCTION: MenuController._saveOptions() {{{1
"set any vim options that are required to make the menu work (saving their old
"values)
function! s:MenuController._saveOptions()
    let self._oldLazyredraw = &lazyredraw
    let self._oldCmdheight = &cmdheight
    set nolazyredraw
    call self._setCmdheight()
endfunction

"FUNCTION: MenuController._restoreOptions() {{{1
"restore the options we saved in _saveOptions()
function! s:MenuController._restoreOptions()
    let &cmdheight = self._oldCmdheight
    let &lazyredraw = self._oldLazyredraw
endfunction

"FUNCTION: MenuController._cursorDown() {{{1
"move the cursor to the next menu item, skipping separators
function! s:MenuController._cursorDown()
    let done = 0
    while !done
        if self.selection < len(self.menuItems)-1
            let self.selection += 1
        else
            let self.selection = 0
        endif

        if !self._current().isSeparator()
            let done = 1
        endif
    endwhile
endfunction

"FUNCTION: MenuController._cursorUp() {{{1
"move the cursor to the previous menu item, skipping separators
function! s:MenuController._cursorUp()
    let done = 0
    while !done
        if self.selection > 0
            let self.selection -= 1
        else
            let self.selection = len(self.menuItems)-1
        endif

        if !self._current().isSeparator()
            let done = 1
        endif
    endwhile
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        lib/nerdtree/notifier.vim                                                                           0000664 0001750 0001750 00000002000 12401543467 016466  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: Notifier
"============================================================
let s:Notifier = {}

function! s:Notifier.AddListener(event, funcname)
    let listeners = s:Notifier.GetListenersForEvent(a:event)
    if listeners == []
        let listenersMap = s:Notifier.GetListenersMap()
        let listenersMap[a:event] = listeners
    endif
    call add(listeners, a:funcname)
endfunction

function! s:Notifier.NotifyListeners(event, path, params)
    let event = g:NERDTreeEvent.New(b:NERDTree, a:path, a:event, a:params)

    for listener in s:Notifier.GetListenersForEvent(a:event)
        call {listener}(event)
    endfor
endfunction

function! s:Notifier.GetListenersMap()
    if !exists("s:refreshListenersMap")
        let s:refreshListenersMap = {}
    endif
    return s:refreshListenersMap
endfunction

function! s:Notifier.GetListenersForEvent(name)
    let listenersMap = s:Notifier.GetListenersMap()
    return get(listenersMap, a:name, [])
endfunction

let g:NERDTreePathNotifier = deepcopy(s:Notifier)

lib/nerdtree/menu_item.vim                                                                          0000664 0001750 0001750 00000006350 12401543467 016645  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: MenuItem
"============================================================
let s:MenuItem = {}
let g:NERDTreeMenuItem = s:MenuItem

"FUNCTION: MenuItem.All() {{{1
"get all top level menu items
function! s:MenuItem.All()
    if !exists("s:menuItems")
        let s:menuItems = []
    endif
    return s:menuItems
endfunction

"FUNCTION: MenuItem.AllEnabled() {{{1
"get all top level menu items that are currently enabled
function! s:MenuItem.AllEnabled()
    let toReturn = []
    for i in s:MenuItem.All()
        if i.enabled()
            call add(toReturn, i)
        endif
    endfor
    return toReturn
endfunction

"FUNCTION: MenuItem.Create(options) {{{1
"make a new menu item and add it to the global list
function! s:MenuItem.Create(options)
    let newMenuItem = copy(self)

    let newMenuItem.text = a:options['text']
    let newMenuItem.shortcut = a:options['shortcut']
    let newMenuItem.children = []

    let newMenuItem.isActiveCallback = -1
    if has_key(a:options, 'isActiveCallback')
        let newMenuItem.isActiveCallback = a:options['isActiveCallback']
    endif

    let newMenuItem.callback = -1
    if has_key(a:options, 'callback')
        let newMenuItem.callback = a:options['callback']
    endif

    if has_key(a:options, 'parent')
        call add(a:options['parent'].children, newMenuItem)
    else
        call add(s:MenuItem.All(), newMenuItem)
    endif

    return newMenuItem
endfunction

"FUNCTION: MenuItem.CreateSeparator(options) {{{1
"make a new separator menu item and add it to the global list
function! s:MenuItem.CreateSeparator(options)
    let standard_options = { 'text': '--------------------',
                \ 'shortcut': -1,
                \ 'callback': -1 }
    let options = extend(a:options, standard_options, "force")

    return s:MenuItem.Create(options)
endfunction

"FUNCTION: MenuItem.CreateSubmenu(options) {{{1
"make a new submenu and add it to global list
function! s:MenuItem.CreateSubmenu(options)
    let standard_options = { 'callback': -1 }
    let options = extend(a:options, standard_options, "force")

    return s:MenuItem.Create(options)
endfunction

"FUNCTION: MenuItem.enabled() {{{1
"return 1 if this menu item should be displayed
"
"delegates off to the isActiveCallback, and defaults to 1 if no callback was
"specified
function! s:MenuItem.enabled()
    if self.isActiveCallback != -1
        return {self.isActiveCallback}()
    endif
    return 1
endfunction

"FUNCTION: MenuItem.execute() {{{1
"perform the action behind this menu item, if this menuitem has children then
"display a new menu for them, otherwise deletegate off to the menuitem's
"callback
function! s:MenuItem.execute()
    if len(self.children)
        let mc = g:NERDTreeMenuController.New(self.children)
        call mc.showMenu()
    else
        if self.callback != -1
            call {self.callback}()
        endif
    endif
endfunction

"FUNCTION: MenuItem.isSeparator() {{{1
"return 1 if this menuitem is a separator
function! s:MenuItem.isSeparator()
    return self.callback == -1 && self.children == []
endfunction

"FUNCTION: MenuItem.isSubmenu() {{{1
"return 1 if this menuitem is a submenu
function! s:MenuItem.isSubmenu()
    return self.callback == -1 && !empty(self.children)
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                                                                                        lib/nerdtree/nerdtree.vim                                                                           0000664 0001750 0001750 00000001755 12401543467 016477  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: NERDTree
"============================================================
let s:NERDTree = {}
let g:NERDTree = s:NERDTree

" Function: s:NERDTree.ExistsForBuffer()   {{{1
" Returns 1 if a nerd tree root exists in the current buffer
function! s:NERDTree.ExistsForBuf()
    return exists("b:NERDTreeRoot")
endfunction

" Function: s:NERDTree.ExistsForTab()   {{{1
" Returns 1 if a nerd tree root exists in the current tab
function! s:NERDTree.ExistsForTab()
    return exists("t:NERDTreeBufName")
endfunction

function! s:NERDTree.ForCurrentBuf()
    if s:NERDTree.ExistsForBuf()
        return b:NERDTree
    else
        return {}
    endif
endfunction

function! s:NERDTree.New(path)
    let newObj = copy(self)
    let newObj.ui = g:NERDTreeUI.New(newObj)
    let newObj.root = g:NERDTreeDirNode.New(a:path)

    return newObj
endfunction

"FUNCTION: s:NERDTree.render() {{{1
"A convenience function - since this is called often
function! s:NERDTree.render()
    call self.ui.render()
endfunction

                   lib/nerdtree/tree_file_node.vim                                                                     0000664 0001750 0001750 00000032452 12401543467 017630  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: TreeFileNode
"This class is the parent of the TreeDirNode class and is the
"'Component' part of the composite design pattern between the treenode
"classes.
"============================================================
let s:TreeFileNode = {}
let g:NERDTreeFileNode = s:TreeFileNode

"FUNCTION: TreeFileNode.activate(...) {{{1
function! s:TreeFileNode.activate(...)
    call self.open(a:0 ? a:1 : {})
endfunction

"FUNCTION: TreeFileNode.bookmark(name) {{{1
"bookmark this node with a:name
function! s:TreeFileNode.bookmark(name)

    "if a bookmark exists with the same name and the node is cached then save
    "it so we can update its display string
    let oldMarkedNode = {}
    try
        let oldMarkedNode = g:NERDTreeBookmark.GetNodeForName(a:name, 1)
    catch /^NERDTree.BookmarkNotFoundError/
    catch /^NERDTree.BookmarkedNodeNotFoundError/
    endtry

    call g:NERDTreeBookmark.AddBookmark(a:name, self.path)
    call self.path.cacheDisplayString()
    call g:NERDTreeBookmark.Write()

    if !empty(oldMarkedNode)
        call oldMarkedNode.path.cacheDisplayString()
    endif
endfunction

"FUNCTION: TreeFileNode.cacheParent() {{{1
"initializes self.parent if it isnt already
function! s:TreeFileNode.cacheParent()
    if empty(self.parent)
        let parentPath = self.path.getParent()
        if parentPath.equals(self.path)
            throw "NERDTree.CannotCacheParentError: already at root"
        endif
        let self.parent = s:TreeFileNode.New(parentPath)
    endif
endfunction

"FUNCTION: TreeFileNode.clearBookmarks() {{{1
function! s:TreeFileNode.clearBookmarks()
    for i in g:NERDTreeBookmark.Bookmarks()
        if i.path.equals(self.path)
            call i.delete()
        end
    endfor
    call self.path.cacheDisplayString()
endfunction

"FUNCTION: TreeFileNode.copy(dest) {{{1
function! s:TreeFileNode.copy(dest)
    call self.path.copy(a:dest)
    let newPath = g:NERDTreePath.New(a:dest)
    let parent = b:NERDTreeRoot.findNode(newPath.getParent())
    if !empty(parent)
        call parent.refresh()
        return parent.findNode(newPath)
    else
        return {}
    endif
endfunction

"FUNCTION: TreeFileNode.delete {{{1
"Removes this node from the tree and calls the Delete method for its path obj
function! s:TreeFileNode.delete()
    call self.path.delete()
    call self.parent.removeChild(self)
endfunction

"FUNCTION: TreeFileNode.displayString() {{{1
"
"Returns a string that specifies how the node should be represented as a
"string
"
"Return:
"a string that can be used in the view to represent this node
function! s:TreeFileNode.displayString()
    return self.path.displayString()
endfunction

"FUNCTION: TreeFileNode.equals(treenode) {{{1
"
"Compares this treenode to the input treenode and returns 1 if they are the
"same node.
"
"Use this method instead of ==  because sometimes when the treenodes contain
"many children, vim seg faults when doing ==
"
"Args:
"treenode: the other treenode to compare to
function! s:TreeFileNode.equals(treenode)
    return self.path.str() ==# a:treenode.path.str()
endfunction

"FUNCTION: TreeFileNode.findNode(path) {{{1
"Returns self if this node.path.Equals the given path.
"Returns {} if not equal.
"
"Args:
"path: the path object to compare against
function! s:TreeFileNode.findNode(path)
    if a:path.equals(self.path)
        return self
    endif
    return {}
endfunction

"FUNCTION: TreeFileNode.findOpenDirSiblingWithVisibleChildren(direction) {{{1
"
"Finds the next sibling for this node in the indicated direction. This sibling
"must be a directory and may/may not have children as specified.
"
"Args:
"direction: 0 if you want to find the previous sibling, 1 for the next sibling
"
"Return:
"a treenode object or {} if no appropriate sibling could be found
function! s:TreeFileNode.findOpenDirSiblingWithVisibleChildren(direction)
    "if we have no parent then we can have no siblings
    if self.parent != {}
        let nextSibling = self.findSibling(a:direction)

        while nextSibling != {}
            if nextSibling.path.isDirectory && nextSibling.hasVisibleChildren() && nextSibling.isOpen
                return nextSibling
            endif
            let nextSibling = nextSibling.findSibling(a:direction)
        endwhile
    endif

    return {}
endfunction

"FUNCTION: TreeFileNode.findSibling(direction) {{{1
"
"Finds the next sibling for this node in the indicated direction
"
"Args:
"direction: 0 if you want to find the previous sibling, 1 for the next sibling
"
"Return:
"a treenode object or {} if no sibling could be found
function! s:TreeFileNode.findSibling(direction)
    "if we have no parent then we can have no siblings
    if self.parent != {}

        "get the index of this node in its parents children
        let siblingIndx = self.parent.getChildIndex(self.path)

        if siblingIndx != -1
            "move a long to the next potential sibling node
            let siblingIndx = a:direction ==# 1 ? siblingIndx+1 : siblingIndx-1

            "keep moving along to the next sibling till we find one that is valid
            let numSiblings = self.parent.getChildCount()
            while siblingIndx >= 0 && siblingIndx < numSiblings

                "if the next node is not an ignored node (i.e. wont show up in the
                "view) then return it
                if self.parent.children[siblingIndx].path.ignore() ==# 0
                    return self.parent.children[siblingIndx]
                endif

                "go to next node
                let siblingIndx = a:direction ==# 1 ? siblingIndx+1 : siblingIndx-1
            endwhile
        endif
    endif

    return {}
endfunction

"FUNCTION: TreeFileNode.GetRootForTab(){{{1
"get the root node for this tab
function! s:TreeFileNode.GetRootForTab()
    if g:NERDTree.ExistsForTab()
        return getbufvar(t:NERDTreeBufName, 'NERDTreeRoot')
    end
    return {}
endfunction

"FUNCTION: TreeFileNode.GetSelected() {{{1
"gets the treenode that the cursor is currently over
function! s:TreeFileNode.GetSelected()
    try
        let path = b:NERDTree.ui.getPath(line("."))
        if path ==# {}
            return {}
        endif
        return b:NERDTreeRoot.findNode(path)
    catch /^NERDTree/
        return {}
    endtry
endfunction

"FUNCTION: TreeFileNode.isVisible() {{{1
"returns 1 if this node should be visible according to the tree filters and
"hidden file filters (and their on/off status)
function! s:TreeFileNode.isVisible()
    return !self.path.ignore()
endfunction

"FUNCTION: TreeFileNode.isRoot() {{{1
"returns 1 if this node is b:NERDTreeRoot
function! s:TreeFileNode.isRoot()
    if !g:NERDTree.ExistsForBuf()
        throw "NERDTree.NoTreeError: No tree exists for the current buffer"
    endif

    return self.equals(b:NERDTreeRoot)
endfunction

"FUNCTION: TreeFileNode.makeRoot() {{{1
"Make this node the root of the tree
function! s:TreeFileNode.makeRoot()
    if self.path.isDirectory
        let b:NERDTreeRoot = self
    else
        call self.cacheParent()
        let b:NERDTreeRoot = self.parent
    endif

    call b:NERDTreeRoot.open()

    "change dir to the dir of the new root if instructed to
    if g:NERDTreeChDirMode ==# 2
        exec "cd " . b:NERDTreeRoot.path.str({'format': 'Edit'})
    endif

    silent doautocmd User NERDTreeNewRoot
endfunction

"FUNCTION: TreeFileNode.New(path) {{{1
"Returns a new TreeNode object with the given path and parent
"
"Args:
"path: a path object representing the full filesystem path to the file/dir that the node represents
function! s:TreeFileNode.New(path)
    if a:path.isDirectory
        return g:NERDTreeDirNode.New(a:path)
    else
        let newTreeNode = copy(self)
        let newTreeNode.path = a:path
        let newTreeNode.parent = {}
        return newTreeNode
    endif
endfunction

"FUNCTION: TreeFileNode.open() {{{1
function! s:TreeFileNode.open(...)
    let opts = a:0 ? a:1 : {}
    let opener = g:NERDTreeOpener.New(self.path, opts)
    call opener.open(self)
endfunction

"FUNCTION: TreeFileNode.openSplit() {{{1
"Open this node in a new window
function! s:TreeFileNode.openSplit()
    call nerdtree#deprecated('TreeFileNode.openSplit', 'is deprecated, use .open() instead.')
    call self.open({'where': 'h'})
endfunction

"FUNCTION: TreeFileNode.openVSplit() {{{1
"Open this node in a new vertical window
function! s:TreeFileNode.openVSplit()
    call nerdtree#deprecated('TreeFileNode.openVSplit', 'is deprecated, use .open() instead.')
    call self.open({'where': 'v'})
endfunction

"FUNCTION: TreeFileNode.openInNewTab(options) {{{1
function! s:TreeFileNode.openInNewTab(options)
    echomsg 'TreeFileNode.openInNewTab is deprecated'
    call self.open(extend({'where': 't'}, a:options))
endfunction

"FUNCTION: TreeFileNode.putCursorHere(isJump, recurseUpward){{{1
"Places the cursor on the line number this node is rendered on
"
"Args:
"isJump: 1 if this cursor movement should be counted as a jump by vim
"recurseUpward: try to put the cursor on the parent if the this node isnt
"visible
function! s:TreeFileNode.putCursorHere(isJump, recurseUpward)
    let ln = b:NERDTree.ui.getLineNum(self)
    if ln != -1
        if a:isJump
            mark '
        endif
        call cursor(ln, col("."))
    else
        if a:recurseUpward
            let node = self
            while node != {} && b:NERDTree.ui.getLineNum(node) ==# -1
                let node = node.parent
                call node.open()
            endwhile
            call b:NERDTree.render()
            call node.putCursorHere(a:isJump, 0)
        endif
    endif
endfunction

"FUNCTION: TreeFileNode.refresh() {{{1
function! s:TreeFileNode.refresh()
    call self.path.refresh()
endfunction

"FUNCTION: TreeFileNode.refreshFlags() {{{1
function! s:TreeFileNode.refreshFlags()
    call self.path.refreshFlags()
endfunction

"FUNCTION: TreeFileNode.rename() {{{1
"Calls the rename method for this nodes path obj
function! s:TreeFileNode.rename(newName)
    let newName = substitute(a:newName, '\(\\\|\/\)$', '', '')
    call self.path.rename(newName)
    call self.parent.removeChild(self)

    let parentPath = self.path.getParent()
    let newParent = b:NERDTreeRoot.findNode(parentPath)

    if newParent != {}
        call newParent.createChild(self.path, 1)
        call newParent.refresh()
    endif
endfunction

"FUNCTION: TreeFileNode.renderToString {{{1
"returns a string representation for this tree to be rendered in the view
function! s:TreeFileNode.renderToString()
    return self._renderToString(0, 0, [], self.getChildCount() ==# 1)
endfunction

"Args:
"depth: the current depth in the tree for this call
"drawText: 1 if we should actually draw the line for this node (if 0 then the
"child nodes are rendered only)
"vertMap: a binary array that indicates whether a vertical bar should be draw
"for each depth in the tree
"isLastChild:true if this curNode is the last child of its parent
function! s:TreeFileNode._renderToString(depth, drawText, vertMap, isLastChild)
    let output = ""
    if a:drawText ==# 1

        let treeParts = ''

        "get all the leading spaces and vertical tree parts for this line
        if a:depth > 1
            for j in a:vertMap[0:-2]
                if g:NERDTreeDirArrows
                    let treeParts = treeParts . '  '
                else
                    if j ==# 1
                        let treeParts = treeParts . '| '
                    else
                        let treeParts = treeParts . '  '
                    endif
                endif
            endfor
        endif

        "get the last vertical tree part for this line which will be different
        "if this node is the last child of its parent
        if !g:NERDTreeDirArrows
            if a:isLastChild
                let treeParts = treeParts . '`'
            else
                let treeParts = treeParts . '|'
            endif
        endif

        "smack the appropriate dir/file symbol on the line before the file/dir
        "name itself
        if self.path.isDirectory
            if self.isOpen
                if g:NERDTreeDirArrows
                    let treeParts = treeParts . '▾ '
                else
                    let treeParts = treeParts . '~'
                endif
            else
                if g:NERDTreeDirArrows
                    let treeParts = treeParts . '▸ '
                else
                    let treeParts = treeParts . '+'
                endif
            endif
        else
            if g:NERDTreeDirArrows
                let treeParts = treeParts . '  '
            else
                let treeParts = treeParts . '-'
            endif
        endif
        let line = treeParts . self.displayString()

        let output = output . line . "\n"
    endif

    "if the node is an open dir, draw its children
    if self.path.isDirectory ==# 1 && self.isOpen ==# 1

        let childNodesToDraw = self.getVisibleChildren()
        if len(childNodesToDraw) > 0

            "draw all the nodes children except the last
            let lastIndx = len(childNodesToDraw)-1
            if lastIndx > 0
                for i in childNodesToDraw[0:lastIndx-1]
                    let output = output . i._renderToString(a:depth + 1, 1, add(copy(a:vertMap), 1), 0)
                endfor
            endif

            "draw the last child, indicating that it IS the last
            let output = output . childNodesToDraw[lastIndx]._renderToString(a:depth + 1, 1, add(copy(a:vertMap), 0), 1)
        endif
    endif

    return output
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                      lib/nerdtree/path.vim                                                                               0000664 0001750 0001750 00000051460 12401543467 015621  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "we need to use this number many times for sorting... so we calculate it only
"once here
let s:NERDTreeSortStarIndex = index(g:NERDTreeSortOrder, '*')

"CLASS: Path
"============================================================
let s:Path = {}
let g:NERDTreePath = s:Path

"FUNCTION: Path.AbsolutePathFor(str) {{{1
function! s:Path.AbsolutePathFor(str)
    let prependCWD = 0
    if nerdtree#runningWindows()
        let prependCWD = a:str !~# '^.:\(\\\|\/\)' && a:str !~# '^\(\\\\\|\/\/\)'
    else
        let prependCWD = a:str !~# '^/'
    endif

    let toReturn = a:str
    if prependCWD
        let toReturn = getcwd() . s:Path.Slash() . a:str
    endif

    return toReturn
endfunction

"FUNCTION: Path.bookmarkNames() {{{1
function! s:Path.bookmarkNames()
    if !exists("self._bookmarkNames")
        call self.cacheDisplayString()
    endif
    return self._bookmarkNames
endfunction

"FUNCTION: Path.cacheDisplayString() {{{1
function! s:Path.cacheDisplayString() abort
    let self.cachedDisplayString = self.flagSet.renderToString()

    let self.cachedDisplayString .= self.getLastPathComponent(1)

    if self.isExecutable
        let self.cachedDisplayString = self.cachedDisplayString . '*'
    endif

    let self._bookmarkNames = []
    for i in g:NERDTreeBookmark.Bookmarks()
        if i.path.equals(self)
            call add(self._bookmarkNames, i.name)
        endif
    endfor
    if !empty(self._bookmarkNames)
        let self.cachedDisplayString .= ' {' . join(self._bookmarkNames) . '}'
    endif

    if self.isSymLink
        let self.cachedDisplayString .=  ' -> ' . self.symLinkDest
    endif

    if self.isReadOnly
        let self.cachedDisplayString .=  ' [RO]'
    endif
endfunction

"FUNCTION: Path.changeToDir() {{{1
function! s:Path.changeToDir()
    let dir = self.str({'format': 'Cd'})
    if self.isDirectory ==# 0
        let dir = self.getParent().str({'format': 'Cd'})
    endif

    try
        execute "cd " . dir
        call nerdtree#echo("CWD is now: " . getcwd())
    catch
        throw "NERDTree.PathChangeError: cannot change CWD to " . dir
    endtry
endfunction

"FUNCTION: Path.compareTo() {{{1
"
"Compares this Path to the given path and returns 0 if they are equal, -1 if
"this Path is "less than" the given path, or 1 if it is "greater".
"
"Args:
"path: the path object to compare this to
"
"Return:
"1, -1 or 0
function! s:Path.compareTo(path)
    let thisPath = self.getLastPathComponent(1)
    let thatPath = a:path.getLastPathComponent(1)

    "if the paths are the same then clearly we return 0
    if thisPath ==# thatPath
        return 0
    endif

    let thisSS = self.getSortOrderIndex()
    let thatSS = a:path.getSortOrderIndex()

    "compare the sort sequences, if they are different then the return
    "value is easy
    if thisSS < thatSS
        return -1
    elseif thisSS > thatSS
        return 1
    else
        if !g:NERDTreeSortHiddenFirst
            let thisPath = substitute(thisPath, '^[._]', '', '')
            let thatPath = substitute(thatPath, '^[._]', '', '')
        endif
        "if the sort sequences are the same then compare the paths
        "alphabetically
        let pathCompare = g:NERDTreeCaseSensitiveSort ? thisPath <# thatPath : thisPath <? thatPath
        if pathCompare
            return -1
        else
            return 1
        endif
    endif
endfunction

"FUNCTION: Path.Create(fullpath) {{{1
"
"Factory method.
"
"Creates a path object with the given path. The path is also created on the
"filesystem. If the path already exists, a NERDTree.Path.Exists exception is
"thrown. If any other errors occur, a NERDTree.Path exception is thrown.
"
"Args:
"fullpath: the full filesystem path to the file/dir to create
function! s:Path.Create(fullpath)
    "bail if the a:fullpath already exists
    if isdirectory(a:fullpath) || filereadable(a:fullpath)
        throw "NERDTree.CreatePathError: Directory Exists: '" . a:fullpath . "'"
    endif

    try

        "if it ends with a slash, assume its a dir create it
        if a:fullpath =~# '\(\\\|\/\)$'
            "whack the trailing slash off the end if it exists
            let fullpath = substitute(a:fullpath, '\(\\\|\/\)$', '', '')

            call mkdir(fullpath, 'p')

        "assume its a file and create
        else
            call s:Path.createParentDirectories(a:fullpath)
            call writefile([], a:fullpath)
        endif
    catch
        throw "NERDTree.CreatePathError: Could not create path: '" . a:fullpath . "'"
    endtry

    return s:Path.New(a:fullpath)
endfunction

"FUNCTION: Path.copy(dest) {{{1
"
"Copies the file/dir represented by this Path to the given location
"
"Args:
"dest: the location to copy this dir/file to
function! s:Path.copy(dest)
    if !s:Path.CopyingSupported()
        throw "NERDTree.CopyingNotSupportedError: Copying is not supported on this OS"
    endif

    call s:Path.createParentDirectories(a:dest)

    let dest = s:Path.WinToUnixPath(a:dest)

    let cmd = g:NERDTreeCopyCmd . " " . escape(self.str(), self._escChars()) . " " . escape(dest, self._escChars())
    let success = system(cmd)
    if success != 0
        throw "NERDTree.CopyError: Could not copy ''". self.str() ."'' to: '" . a:dest . "'"
    endif
endfunction

"FUNCTION: Path.CopyingSupported() {{{1
"
"returns 1 if copying is supported for this OS
function! s:Path.CopyingSupported()
    return exists('g:NERDTreeCopyCmd')
endfunction

"FUNCTION: Path.copyingWillOverwrite(dest) {{{1
"
"returns 1 if copy this path to the given location will cause files to
"overwritten
"
"Args:
"dest: the location this path will be copied to
function! s:Path.copyingWillOverwrite(dest)
    if filereadable(a:dest)
        return 1
    endif

    if isdirectory(a:dest)
        let path = s:Path.JoinPathStrings(a:dest, self.getLastPathComponent(0))
        if filereadable(path)
            return 1
        endif
    endif
endfunction

"FUNCTION: Path.createParentDirectories(path) {{{1
"
"create parent directories for this path if needed
"without throwing any errors is those directories already exist
"
"Args:
"path: full path of the node whose parent directories may need to be created
function! s:Path.createParentDirectories(path)
    let dir_path = fnamemodify(a:path, ':h')
    if !isdirectory(dir_path)
        call mkdir(dir_path, 'p')
    endif
endfunction

"FUNCTION: Path.delete() {{{1
"
"Deletes the file represented by this path.
"Deletion of directories is not supported
"
"Throws NERDTree.Path.Deletion exceptions
function! s:Path.delete()
    if self.isDirectory

        let cmd = g:NERDTreeRemoveDirCmd . self.str({'escape': 1})
        let success = system(cmd)

        if v:shell_error != 0
            throw "NERDTree.PathDeletionError: Could not delete directory: '" . self.str() . "'"
        endif
    else
        let success = delete(self.str())
        if success != 0
            throw "NERDTree.PathDeletionError: Could not delete file: '" . self.str() . "'"
        endif
    endif

    "delete all bookmarks for this path
    for i in self.bookmarkNames()
        let bookmark = g:NERDTreeBookmark.BookmarkFor(i)
        call bookmark.delete()
    endfor
endfunction

"FUNCTION: Path.displayString() {{{1
"
"Returns a string that specifies how the path should be represented as a
"string
function! s:Path.displayString()
    if self.cachedDisplayString ==# ""
        call self.cacheDisplayString()
    endif

    return self.cachedDisplayString
endfunction

"FUNCTION: Path.edit() {{{1
function! s:Path.edit()
    exec "edit " . self.str({'format': 'Edit'})
endfunction

"FUNCTION: Path.extractDriveLetter(fullpath) {{{1
"
"If running windows, cache the drive letter for this path
function! s:Path.extractDriveLetter(fullpath)
    if nerdtree#runningWindows()
        if a:fullpath =~ '^\(\\\\\|\/\/\)'
            "For network shares, the 'drive' consists of the first two parts of the path, i.e. \\boxname\share
            let self.drive = substitute(a:fullpath, '^\(\(\\\\\|\/\/\)[^\\\/]*\(\\\|\/\)[^\\\/]*\).*', '\1', '')
            let self.drive = substitute(self.drive, '/', '\', "g")
        else
            let self.drive = substitute(a:fullpath, '\(^[a-zA-Z]:\).*', '\1', '')
        endif
    else
        let self.drive = ''
    endif

endfunction

"FUNCTION: Path.exists() {{{1
"return 1 if this path points to a location that is readable or is a directory
function! s:Path.exists()
    let p = self.str()
    return filereadable(p) || isdirectory(p)
endfunction

"FUNCTION: Path._escChars() {{{1
function! s:Path._escChars()
    if nerdtree#runningWindows()
        return " `\|\"#%&,?()\*^<>"
    endif

    return " \\`\|\"#%&,?()\*^<>[]"
endfunction

"FUNCTION: Path.getDir() {{{1
"
"Returns this path if it is a directory, else this paths parent.
"
"Return:
"a Path object
function! s:Path.getDir()
    if self.isDirectory
        return self
    else
        return self.getParent()
    endif
endfunction

"FUNCTION: Path.getParent() {{{1
"
"Returns a new path object for this paths parent
"
"Return:
"a new Path object
function! s:Path.getParent()
    if nerdtree#runningWindows()
        let path = self.drive . '\' . join(self.pathSegments[0:-2], '\')
    else
        let path = '/'. join(self.pathSegments[0:-2], '/')
    endif

    return s:Path.New(path)
endfunction

"FUNCTION: Path.getLastPathComponent(dirSlash) {{{1
"
"Gets the last part of this path.
"
"Args:
"dirSlash: if 1 then a trailing slash will be added to the returned value for
"directory nodes.
function! s:Path.getLastPathComponent(dirSlash)
    if empty(self.pathSegments)
        return ''
    endif
    let toReturn = self.pathSegments[-1]
    if a:dirSlash && self.isDirectory
        let toReturn = toReturn . '/'
    endif
    return toReturn
endfunction

"FUNCTION: Path.getSortOrderIndex() {{{1
"returns the index of the pattern in g:NERDTreeSortOrder that this path matches
function! s:Path.getSortOrderIndex()
    let i = 0
    while i < len(g:NERDTreeSortOrder)
        if  self.getLastPathComponent(1) =~# g:NERDTreeSortOrder[i]
            return i
        endif
        let i = i + 1
    endwhile
    return s:NERDTreeSortStarIndex
endfunction

"FUNCTION: Path.isUnixHiddenFile() {{{1
"check for unix hidden files
function! s:Path.isUnixHiddenFile()
    return self.getLastPathComponent(0) =~# '^\.'
endfunction

"FUNCTION: Path.isUnixHiddenPath() {{{1
"check for unix path with hidden components
function! s:Path.isUnixHiddenPath()
    if self.getLastPathComponent(0) =~# '^\.'
        return 1
    else
        for segment in self.pathSegments
            if segment =~# '^\.'
                return 1
            endif
        endfor
        return 0
    endif
endfunction

"FUNCTION: Path.ignore() {{{1
"returns true if this path should be ignored
function! s:Path.ignore()
    "filter out the user specified paths to ignore
    if b:NERDTreeIgnoreEnabled
        for i in g:NERDTreeIgnore
            if self._ignorePatternMatches(i)
                return 1
            endif
        endfor
    endif

    "dont show hidden files unless instructed to
    if b:NERDTreeShowHidden ==# 0 && self.isUnixHiddenFile()
        return 1
    endif

    if b:NERDTreeShowFiles ==# 0 && self.isDirectory ==# 0
        return 1
    endif

    if exists("*NERDTreeCustomIgnoreFilter") && NERDTreeCustomIgnoreFilter(self)
        return 1
    endif

    return 0
endfunction

"FUNCTION: Path._ignorePatternMatches(pattern) {{{1
"returns true if this path matches the given ignore pattern
function! s:Path._ignorePatternMatches(pattern)
    let pat = a:pattern
    if strpart(pat,len(pat)-7) == '[[dir]]'
        if !self.isDirectory
            return 0
        endif
        let pat = strpart(pat,0, len(pat)-7)
    elseif strpart(pat,len(pat)-8) == '[[file]]'
        if self.isDirectory
            return 0
        endif
        let pat = strpart(pat,0, len(pat)-8)
    endif

    return self.getLastPathComponent(0) =~# pat
endfunction

"FUNCTION: Path.isUnder(path) {{{1
"return 1 if this path is somewhere under the given path in the filesystem.
"
"a:path should be a dir
function! s:Path.isUnder(path)
    if a:path.isDirectory == 0
        return 0
    endif

    let this = self.str()
    let that = a:path.str()
    return stridx(this, that . s:Path.Slash()) == 0
endfunction

"FUNCTION: Path.JoinPathStrings(...) {{{1
function! s:Path.JoinPathStrings(...)
    let components = []
    for i in a:000
        let components = extend(components, split(i, '/'))
    endfor
    return '/' . join(components, '/')
endfunction

"FUNCTION: Path.equals() {{{1
"
"Determines whether 2 path objects are "equal".
"They are equal if the paths they represent are the same
"
"Args:
"path: the other path obj to compare this with
function! s:Path.equals(path)
    return self.str() ==# a:path.str()
endfunction

"FUNCTION: Path.New() {{{1
"The Constructor for the Path object
function! s:Path.New(path)
    let newPath = copy(self)

    call newPath.readInfoFromDisk(s:Path.AbsolutePathFor(a:path))

    let newPath.cachedDisplayString = ""
    let newPath.flagSet = g:NERDTreeFlagSet.New()

    return newPath
endfunction

"FUNCTION: Path.Slash() {{{1
"return the slash to use for the current OS
function! s:Path.Slash()
    return nerdtree#runningWindows() ? '\' : '/'
endfunction

"FUNCTION: Path.Resolve() {{{1
"Invoke the vim resolve() function and return the result
"This is necessary because in some versions of vim resolve() removes trailing
"slashes while in other versions it doesn't.  This always removes the trailing
"slash
function! s:Path.Resolve(path)
    let tmp = resolve(a:path)
    return tmp =~# '.\+/$' ? substitute(tmp, '/$', '', '') : tmp
endfunction

"FUNCTION: Path.readInfoFromDisk(fullpath) {{{1
"
"
"Throws NERDTree.Path.InvalidArguments exception.
function! s:Path.readInfoFromDisk(fullpath)
    call self.extractDriveLetter(a:fullpath)

    let fullpath = s:Path.WinToUnixPath(a:fullpath)

    if getftype(fullpath) ==# "fifo"
        throw "NERDTree.InvalidFiletypeError: Cant handle FIFO files: " . a:fullpath
    endif

    let self.pathSegments = split(fullpath, '/')

    let self.isReadOnly = 0
    if isdirectory(a:fullpath)
        let self.isDirectory = 1
    elseif filereadable(a:fullpath)
        let self.isDirectory = 0
        let self.isReadOnly = filewritable(a:fullpath) ==# 0
    else
        throw "NERDTree.InvalidArgumentsError: Invalid path = " . a:fullpath
    endif

    let self.isExecutable = 0
    if !self.isDirectory
        let self.isExecutable = getfperm(a:fullpath) =~# 'x'
    endif

    "grab the last part of the path (minus the trailing slash)
    let lastPathComponent = self.getLastPathComponent(0)

    "get the path to the new node with the parent dir fully resolved
    let hardPath = s:Path.Resolve(self.strTrunk()) . '/' . lastPathComponent

    "if  the last part of the path is a symlink then flag it as such
    let self.isSymLink = (s:Path.Resolve(hardPath) != hardPath)
    if self.isSymLink
        let self.symLinkDest = s:Path.Resolve(fullpath)

        "if the link is a dir then slap a / on the end of its dest
        if isdirectory(self.symLinkDest)

            "we always wanna treat MS windows shortcuts as files for
            "simplicity
            if hardPath !~# '\.lnk$'

                let self.symLinkDest = self.symLinkDest . '/'
            endif
        endif
    endif
endfunction

"FUNCTION: Path.refresh() {{{1
function! s:Path.refresh()
    call self.readInfoFromDisk(self.str())
    call g:NERDTreePathNotifier.NotifyListeners('refresh', self, {})
    call self.cacheDisplayString()
endfunction

"FUNCTION: Path.refreshFlags() {{{1
function! s:Path.refreshFlags()
    call g:NERDTreePathNotifier.NotifyListeners('refreshFlags', self, {})
    call self.cacheDisplayString()
endfunction

"FUNCTION: Path.rename() {{{1
"
"Renames this node on the filesystem
function! s:Path.rename(newPath)
    if a:newPath ==# ''
        throw "NERDTree.InvalidArgumentsError: Invalid newPath for renaming = ". a:newPath
    endif

    let success =  rename(self.str(), a:newPath)
    if success != 0
        throw "NERDTree.PathRenameError: Could not rename: '" . self.str() . "'" . 'to:' . a:newPath
    endif
    call self.readInfoFromDisk(a:newPath)

    for i in self.bookmarkNames()
        let b = g:NERDTreeBookmark.BookmarkFor(i)
        call b.setPath(copy(self))
    endfor
    call g:NERDTreeBookmark.Write()
endfunction

"FUNCTION: Path.str() {{{1
"
"Returns a string representation of this Path
"
"Takes an optional dictionary param to specify how the output should be
"formatted.
"
"The dict may have the following keys:
"  'format'
"  'escape'
"  'truncateTo'
"
"The 'format' key may have a value of:
"  'Cd' - a string to be used with the :cd command
"  'Edit' - a string to be used with :e :sp :new :tabedit etc
"  'UI' - a string used in the NERD tree UI
"
"The 'escape' key, if specified will cause the output to be escaped with
"shellescape()
"
"The 'truncateTo' key causes the resulting string to be truncated to the value
"'truncateTo' maps to. A '<' char will be prepended.
function! s:Path.str(...)
    let options = a:0 ? a:1 : {}
    let toReturn = ""

    if has_key(options, 'format')
        let format = options['format']
        if has_key(self, '_strFor' . format)
            exec 'let toReturn = self._strFor' . format . '()'
        else
            raise 'NERDTree.UnknownFormatError: unknown format "'. format .'"'
        endif
    else
        let toReturn = self._str()
    endif

    if nerdtree#has_opt(options, 'escape')
        let toReturn = shellescape(toReturn)
    endif

    if has_key(options, 'truncateTo')
        let limit = options['truncateTo']
        if len(toReturn) > limit
            let toReturn = "<" . strpart(toReturn, len(toReturn) - limit + 1)
        endif
    endif

    return toReturn
endfunction

"FUNCTION: Path._strForUI() {{{1
function! s:Path._strForUI()
    let toReturn = '/' . join(self.pathSegments, '/')
    if self.isDirectory && toReturn != '/'
        let toReturn  = toReturn . '/'
    endif
    return toReturn
endfunction

"FUNCTION: Path._strForCd() {{{1
"
" returns a string that can be used with :cd
function! s:Path._strForCd()
    return escape(self.str(), self._escChars())
endfunction

"FUNCTION: Path._strForEdit() {{{1
"
"Return: the string for this path that is suitable to be used with the :edit
"command
function! s:Path._strForEdit()
    let p = escape(self.str({'format': 'UI'}), self._escChars())
    let cwd = getcwd() . s:Path.Slash()

    "return a relative path if we can
    let isRelative = 0
    if nerdtree#runningWindows()
        let isRelative = stridx(tolower(p), tolower(cwd)) == 0
    else
        let isRelative = stridx(p, cwd) == 0
    endif

    if isRelative
        let p = strpart(p, strlen(cwd))

        "handle the edge case where the file begins with a + (vim interprets
        "the +foo in `:e +foo` as an option to :edit)
        if p[0] == "+"
            let p = '\' . p
        endif
    endif

    if p ==# ''
        let p = '.'
    endif

    return p
endfunction

"FUNCTION: Path._strForGlob() {{{1
function! s:Path._strForGlob()
    let lead = s:Path.Slash()

    "if we are running windows then slap a drive letter on the front
    if nerdtree#runningWindows()
        let lead = self.drive . '\'
    endif

    let toReturn = lead . join(self.pathSegments, s:Path.Slash())

    if !nerdtree#runningWindows()
        let toReturn = escape(toReturn, self._escChars())
    endif
    return toReturn
endfunction

"FUNCTION: Path._str() {{{1
"
"Gets the string path for this path object that is appropriate for the OS.
"EG, in windows c:\foo\bar
"    in *nix  /foo/bar
function! s:Path._str()
    let lead = s:Path.Slash()

    "if we are running windows then slap a drive letter on the front
    if nerdtree#runningWindows()
        let lead = self.drive . '\'
    endif

    return lead . join(self.pathSegments, s:Path.Slash())
endfunction

"FUNCTION: Path.strTrunk() {{{1
"Gets the path without the last segment on the end.
function! s:Path.strTrunk()
    return self.drive . '/' . join(self.pathSegments[0:-2], '/')
endfunction

" FUNCTION: Path.tabnr() {{{1
" return the number of the first tab that is displaying this file
"
" return 0 if no tab was found
function! s:Path.tabnr()
    let str = self.str()
    for t in range(tabpagenr('$'))
        for b in tabpagebuflist(t+1)
            if str == expand('#' . b . ':p')
                return t+1
            endif
        endfor
    endfor
    return 0
endfunction

"FUNCTION: Path.WinToUnixPath(pathstr){{{1
"Takes in a windows path and returns the unix equiv
"
"A class level method
"
"Args:
"pathstr: the windows path to convert
function! s:Path.WinToUnixPath(pathstr)
    if !nerdtree#runningWindows()
        return a:pathstr
    endif

    let toReturn = a:pathstr

    "remove the x:\ of the front
    let toReturn = substitute(toReturn, '^.*:\(\\\|/\)\?', '/', "")

    "remove the \\ network share from the front
    let toReturn = substitute(toReturn, '^\(\\\\\|\/\/\)[^\\\/]*\(\\\|\/\)[^\\\/]*\(\\\|\/\)\?', '/', "")

    "convert all \ chars to /
    let toReturn = substitute(toReturn, '\', '/', "g")

    return toReturn
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                lib/nerdtree/event.vim                                                                              0000664 0001750 0001750 00000000577 12401543467 016011  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: Event
"============================================================
let s:Event = {}
let g:NERDTreeEvent = s:Event

function! s:Event.New(nerdtree, subject, action, params) abort
    let newObj = copy(self)
    let newObj.nerdtree = a:nerdtree
    let newObj.subject = a:subject
    let newObj.action = a:action
    let newObj.params = a:params
    return newObj
endfunction
                                                                                                                                 lib/nerdtree/key_map.vim                                                                            0000664 0001750 0001750 00000010601 12401543467 016302  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: KeyMap
"============================================================
let s:KeyMap = {}
let g:NERDTreeKeyMap = s:KeyMap

"FUNCTION: KeyMap.All() {{{1
function! s:KeyMap.All()
    if !exists("s:keyMaps")
        let s:keyMaps = []
    endif
    return s:keyMaps
endfunction

"FUNCTION: KeyMap.FindFor(key, scope) {{{1
function! s:KeyMap.FindFor(key, scope)
    for i in s:KeyMap.All()
         if i.key ==# a:key && i.scope ==# a:scope
            return i
        endif
    endfor
    return {}
endfunction

"FUNCTION: KeyMap.BindAll() {{{1
function! s:KeyMap.BindAll()
    for i in s:KeyMap.All()
        call i.bind()
    endfor
endfunction

"FUNCTION: KeyMap.bind() {{{1
function! s:KeyMap.bind()
    " If the key sequence we're trying to map contains any '<>' notation, we
    " must replace each of the '<' characters with '<lt>' to ensure the string
    " is not translated into its corresponding keycode during the later part
    " of the map command below
    " :he <>
    let specialNotationRegex = '\m<\([[:alnum:]_-]\+>\)'
    if self.key =~# specialNotationRegex
        let keymapInvokeString = substitute(self.key, specialNotationRegex, '<lt>\1', 'g')
    else
        let keymapInvokeString = self.key
    endif

    let premap = self.key == "<LeftRelease>" ? " <LeftRelease>" : " "

    exec 'nnoremap <buffer> <silent> '. self.key . premap . ':call nerdtree#ui_glue#invokeKeyMap("'. keymapInvokeString .'")<cr>'
endfunction

"FUNCTION: KeyMap.Remove(key, scope) {{{1
function! s:KeyMap.Remove(key, scope)
    let maps = s:KeyMap.All()
    for i in range(len(maps))
         if maps[i].key ==# a:key && maps[i].scope ==# a:scope
            return remove(maps, i)
        endif
    endfor
endfunction

"FUNCTION: KeyMap.invoke() {{{1
"Call the KeyMaps callback function
function! s:KeyMap.invoke(...)
    let Callback = function(self.callback)
    if a:0
        call Callback(a:1)
    else
        call Callback()
    endif
endfunction

"FUNCTION: KeyMap.Invoke() {{{1
"Find a keymapping for a:key and the current scope invoke it.
"
"Scope is determined as follows:
"   * if the cursor is on a dir node then "DirNode"
"   * if the cursor is on a file node then "FileNode"
"   * if the cursor is on a bookmark then "Bookmark"
"
"If a keymap has the scope of "all" then it will be called if no other keymap
"is found for a:key and the scope.
function! s:KeyMap.Invoke(key)

    "required because clicking the command window below another window still
    "invokes the <LeftRelease> mapping - but changes the window cursor
    "is in first
    "
    "TODO: remove this check when the vim bug is fixed
    if !g:NERDTree.ExistsForBuf()
        return {}
    endif

    let node = g:NERDTreeFileNode.GetSelected()
    if !empty(node)

        "try file node
        if !node.path.isDirectory
            let km = s:KeyMap.FindFor(a:key, "FileNode")
            if !empty(km)
                return km.invoke(node)
            endif
        endif

        "try dir node
        if node.path.isDirectory
            let km = s:KeyMap.FindFor(a:key, "DirNode")
            if !empty(km)
                return km.invoke(node)
            endif
        endif

        "try generic node
        let km = s:KeyMap.FindFor(a:key, "Node")
        if !empty(km)
            return km.invoke(node)
        endif

    endif

    "try bookmark
    let bm = g:NERDTreeBookmark.GetSelected()
    if !empty(bm)
        let km = s:KeyMap.FindFor(a:key, "Bookmark")
        if !empty(km)
            return km.invoke(bm)
        endif
    endif

    "try all
    let km = s:KeyMap.FindFor(a:key, "all")
    if !empty(km)
        return km.invoke()
    endif
endfunction

"FUNCTION: KeyMap.Create(options) {{{1
function! s:KeyMap.Create(options)
    let opts = extend({'scope': 'all', 'quickhelpText': ''}, copy(a:options))

    "dont override other mappings unless the 'override' option is given
    if get(opts, 'override', 0) == 0 && !empty(s:KeyMap.FindFor(opts['key'], opts['scope']))
        return
    end

    let newKeyMap = copy(self)
    let newKeyMap.key = opts['key']
    let newKeyMap.quickhelpText = opts['quickhelpText']
    let newKeyMap.callback = opts['callback']
    let newKeyMap.scope = opts['scope']

    call s:KeyMap.Add(newKeyMap)
endfunction

"FUNCTION: KeyMap.Add(keymap) {{{1
function! s:KeyMap.Add(keymap)
    call s:KeyMap.Remove(a:keymap.key, a:keymap.scope)
    call add(s:KeyMap.All(), a:keymap)
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                               lib/nerdtree/flag_set.vim                                                                           0000664 0001750 0001750 00000002520 12401543467 016442  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              "CLASS: FlagSet
"============================================================
let s:FlagSet = {}
let g:NERDTreeFlagSet = s:FlagSet

"FUNCTION: FlagSet.addFlag(scope, flag) {{{1
function! s:FlagSet.addFlag(scope, flag)
    let flags = self._flagsForScope(a:scope)
    if index(flags, a:flag) == -1
        call add(flags, a:flag)
    end
endfunction

"FUNCTION: FlagSet.clearFlags(scope) {{{1
function! s:FlagSet.clearFlags(scope)
    let self._flags[a:scope] = []
endfunction

"FUNCTION: FlagSet._flagsForScope(scope) {{{1
function! s:FlagSet._flagsForScope(scope)
    if !has_key(self._flags, a:scope)
        let self._flags[a:scope] = []
    endif
    return self._flags[a:scope]
endfunction

"FUNCTION: FlagSet.New() {{{1
function! s:FlagSet.New()
    let newObj = copy(self)
    let newObj._flags = {}
    return newObj
endfunction

"FUNCTION: FlagSet.removeFlag(scope, flag) {{{1
function! s:FlagSet.removeFlag(scope, flag)
    let flags = self._flagsForScope(a:scope)

    let i = index(flags, a:flag)
    if i >= 0
        call remove(flags, i)
    endif
endfunction

"FUNCTION: FlagSet.renderToString() {{{1
function! s:FlagSet.renderToString()
    let flagstring = ""
    for i in values(self._flags)
        let flagstring .= join(i)
    endfor

    if len(flagstring) == 0
        return ""
    endif

    return '[' . flagstring . ']'
endfunction
                                                                                                                                                                                nerdtree_plugin/                                                                                    0000775 0001750 0001750 00000000000 12401543467 014752  5                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              nerdtree_plugin/exec_menuitem.vim                                                                   0000664 0001750 0001750 00000003116 12401543467 020317  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              " ============================================================================
" File:        exec_menuitem.vim
" Description: plugin for NERD Tree that provides an execute file menu item
" Maintainer:  Martin Grenfell <martin.grenfell at gmail dot com>
" Last Change: 22 July, 2009
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================
if exists("g:loaded_nerdtree_exec_menuitem")
    finish
endif
let g:loaded_nerdtree_exec_menuitem = 1

call NERDTreeAddMenuItem({
            \ 'text': '(!)Execute file',
            \ 'shortcut': '!',
            \ 'callback': 'NERDTreeExecFile',
            \ 'isActiveCallback': 'NERDTreeExecFileActive' })

function! NERDTreeExecFileActive()
    let node = g:NERDTreeFileNode.GetSelected()
    return !node.path.isDirectory && node.path.isExecutable
endfunction

function! NERDTreeExecFile()
    let treenode = g:NERDTreeFileNode.GetSelected()
    echo "==========================================================\n"
    echo "Complete the command to execute (add arguments etc):\n"
    let cmd = treenode.path.str({'escape': 1})
    let cmd = input(':!', cmd . ' ')

    if cmd != ''
        exec ':!' . cmd
    else
        echo "Aborted"
    endif
endfunction
                                                                                                                                                                                                                                                                                                                                                                                                                                                  nerdtree_plugin/fs_menu.vim                                                                         0000664 0001750 0001750 00000024021 12401543467 017122  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              " ============================================================================
" File:        fs_menu.vim
" Description: plugin for the NERD Tree that provides a file system menu
" Maintainer:  Martin Grenfell <martin.grenfell at gmail dot com>
" Last Change: 17 July, 2009
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================
if exists("g:loaded_nerdtree_fs_menu")
    finish
endif
let g:loaded_nerdtree_fs_menu = 1

"Automatically delete the buffer after deleting or renaming a file
if !exists("g:NERDTreeAutoDeleteBuffer")
    let g:NERDTreeAutoDeleteBuffer = 0
endif

call NERDTreeAddMenuItem({'text': '(a)dd a childnode', 'shortcut': 'a', 'callback': 'NERDTreeAddNode'})
call NERDTreeAddMenuItem({'text': '(m)ove the current node', 'shortcut': 'm', 'callback': 'NERDTreeMoveNode'})
call NERDTreeAddMenuItem({'text': '(d)elete the current node', 'shortcut': 'd', 'callback': 'NERDTreeDeleteNode'})

if has("gui_mac") || has("gui_macvim")
    call NERDTreeAddMenuItem({'text': '(r)eveal in Finder the current node', 'shortcut': 'r', 'callback': 'NERDTreeRevealInFinder'})
    call NERDTreeAddMenuItem({'text': '(o)pen the current node with system editor', 'shortcut': 'o', 'callback': 'NERDTreeExecuteFile'})
    call NERDTreeAddMenuItem({'text': '(q)uicklook the current node', 'shortcut': 'q', 'callback': 'NERDTreeQuickLook'})
endif

if g:NERDTreePath.CopyingSupported()
    call NERDTreeAddMenuItem({'text': '(c)opy the current node', 'shortcut': 'c', 'callback': 'NERDTreeCopyNode'})
endif

"FUNCTION: s:echo(msg){{{1
function! s:echo(msg)
    redraw
    echomsg "NERDTree: " . a:msg
endfunction

"FUNCTION: s:echoWarning(msg){{{1
function! s:echoWarning(msg)
    echohl warningmsg
    call s:echo(a:msg)
    echohl normal
endfunction

"FUNCTION: s:promptToDelBuffer(bufnum, msg){{{1
"prints out the given msg and, if the user responds by pushing 'y' then the
"buffer with the given bufnum is deleted
"
"Args:
"bufnum: the buffer that may be deleted
"msg: a message that will be echoed to the user asking them if they wish to
"     del the buffer
function! s:promptToDelBuffer(bufnum, msg)
    echo a:msg
    if g:NERDTreeAutoDeleteBuffer || nr2char(getchar()) ==# 'y'
        " 1. ensure that all windows which display the just deleted filename
        " now display an empty buffer (so a layout is preserved).
        " Is not it better to close single tabs with this file only ?
        let s:originalTabNumber = tabpagenr()
        let s:originalWindowNumber = winnr()
        exec "tabdo windo if winbufnr(0) == " . a:bufnum . " | exec ':enew! ' | endif"
        exec "tabnext " . s:originalTabNumber
        exec s:originalWindowNumber . "wincmd w"
        " 3. We don't need a previous buffer anymore
        exec "bwipeout! " . a:bufnum
    endif
endfunction

"FUNCTION: s:promptToRenameBuffer(bufnum, msg){{{1
"prints out the given msg and, if the user responds by pushing 'y' then the
"buffer with the given bufnum is replaced with a new one
"
"Args:
"bufnum: the buffer that may be deleted
"msg: a message that will be echoed to the user asking them if they wish to
"     del the buffer
function! s:promptToRenameBuffer(bufnum, msg, newFileName)
    echo a:msg
    if g:NERDTreeAutoDeleteBuffer || nr2char(getchar()) ==# 'y'
        let quotedFileName = "'" . a:newFileName . "'"
        " 1. ensure that a new buffer is loaded
        exec "badd " . quotedFileName
        " 2. ensure that all windows which display the just deleted filename
        " display a buffer for a new filename.
        let s:originalTabNumber = tabpagenr()
        let s:originalWindowNumber = winnr()
        exec "tabdo windo if winbufnr(0) == " . a:bufnum . " | exec \":e! " . quotedFileName . "\" | endif"
        exec "tabnext " . s:originalTabNumber
        exec s:originalWindowNumber . "wincmd w"
        " 3. We don't need a previous buffer anymore
        exec "bwipeout! " . a:bufnum
    endif
endfunction
"FUNCTION: NERDTreeAddNode(){{{1
function! NERDTreeAddNode()
    let curDirNode = g:NERDTreeDirNode.GetSelected()

    let newNodeName = input("Add a childnode\n".
                          \ "==========================================================\n".
                          \ "Enter the dir/file name to be created. Dirs end with a '/'\n" .
                          \ "", curDirNode.path.str() . g:NERDTreePath.Slash(), "file")

    if newNodeName ==# ''
        call s:echo("Node Creation Aborted.")
        return
    endif

    try
        let newPath = g:NERDTreePath.Create(newNodeName)
        let parentNode = b:NERDTreeRoot.findNode(newPath.getParent())

        let newTreeNode = g:NERDTreeFileNode.New(newPath)
        if empty(parentNode)
            call b:NERDTreeRoot.refresh()
            call b:NERDTree.render()
        elseif parentNode.isOpen || !empty(parentNode.children)
            call parentNode.addChild(newTreeNode, 1)
            call NERDTreeRender()
            call newTreeNode.putCursorHere(1, 0)
        endif
    catch /^NERDTree/
        call s:echoWarning("Node Not Created.")
    endtry
endfunction

"FUNCTION: NERDTreeMoveNode(){{{1
function! NERDTreeMoveNode()
    let curNode = g:NERDTreeFileNode.GetSelected()
    let newNodePath = input("Rename the current node\n" .
                          \ "==========================================================\n" .
                          \ "Enter the new path for the node:                          \n" .
                          \ "", curNode.path.str(), "file")

    if newNodePath ==# ''
        call s:echo("Node Renaming Aborted.")
        return
    endif

    try
        let bufnum = bufnr("^".curNode.path.str()."$")

        call curNode.rename(newNodePath)
        call NERDTreeRender()

        "if the node is open in a buffer, ask the user if they want to
        "close that buffer
        if bufnum != -1
            let prompt = "\nNode renamed.\n\nThe old file is open in buffer ". bufnum . (bufwinnr(bufnum) ==# -1 ? " (hidden)" : "") .". Replace this buffer with a new file? (yN)"
            call s:promptToRenameBuffer(bufnum,  prompt, newNodePath)
        endif

        call curNode.putCursorHere(1, 0)

        redraw
    catch /^NERDTree/
        call s:echoWarning("Node Not Renamed.")
    endtry
endfunction

" FUNCTION: NERDTreeDeleteNode() {{{1
function! NERDTreeDeleteNode()
    let currentNode = g:NERDTreeFileNode.GetSelected()
    let confirmed = 0

    if currentNode.path.isDirectory
        let choice =input("Delete the current node\n" .
                         \ "==========================================================\n" .
                         \ "STOP! To delete this entire directory, type 'yes'\n" .
                         \ "" . currentNode.path.str() . ": ")
        let confirmed = choice ==# 'yes'
    else
        echo "Delete the current node\n" .
           \ "==========================================================\n".
           \ "Are you sure you wish to delete the node:\n" .
           \ "" . currentNode.path.str() . " (yN):"
        let choice = nr2char(getchar())
        let confirmed = choice ==# 'y'
    endif


    if confirmed
        try
            call currentNode.delete()
            call NERDTreeRender()

            "if the node is open in a buffer, ask the user if they want to
            "close that buffer
            let bufnum = bufnr("^".currentNode.path.str()."$")
            if buflisted(bufnum)
                let prompt = "\nNode deleted.\n\nThe file is open in buffer ". bufnum . (bufwinnr(bufnum) ==# -1 ? " (hidden)" : "") .". Delete this buffer? (yN)"
                call s:promptToDelBuffer(bufnum, prompt)
            endif

            redraw
        catch /^NERDTree/
            call s:echoWarning("Could not remove node")
        endtry
    else
        call s:echo("delete aborted")
    endif

endfunction

" FUNCTION: NERDTreeCopyNode() {{{1
function! NERDTreeCopyNode()
    let currentNode = g:NERDTreeFileNode.GetSelected()
    let newNodePath = input("Copy the current node\n" .
                          \ "==========================================================\n" .
                          \ "Enter the new path to copy the node to:                   \n" .
                          \ "", currentNode.path.str(), "file")

    if newNodePath != ""
        "strip trailing slash
        let newNodePath = substitute(newNodePath, '\/$', '', '')

        let confirmed = 1
        if currentNode.path.copyingWillOverwrite(newNodePath)
            call s:echo("Warning: copying may overwrite files! Continue? (yN)")
            let choice = nr2char(getchar())
            let confirmed = choice ==# 'y'
        endif

        if confirmed
            try
                let newNode = currentNode.copy(newNodePath)
                if empty(newNode)
                    call b:NERDTreeRoot.refresh()
                    call b:NERDTree.render()
                else
                    call NERDTreeRender()
                    call newNode.putCursorHere(0, 0)
                endif
            catch /^NERDTree/
                call s:echoWarning("Could not copy node")
            endtry
        endif
    else
        call s:echo("Copy aborted.")
    endif
    redraw
endfunction

function! NERDTreeQuickLook()
    let treenode = g:NERDTreeFileNode.GetSelected()
    if treenode != {}
        call system("qlmanage -p 2>/dev/null '" . treenode.path.str() . "'")
    endif
endfunction

function! NERDTreeRevealInFinder()
    let treenode = g:NERDTreeFileNode.GetSelected()
    if treenode != {}
        let x = system("open -R '" . treenode.path.str() . "'")
    endif
endfunction

function! NERDTreeExecuteFile()
    let treenode = g:NERDTreeFileNode.GetSelected()
    if treenode != {}
        let x = system("open '" . treenode.path.str() . "'")
    endif
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               plugin/                                                                                             0000775 0001750 0001750 00000000000 12401544162 013053  5                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              plugin/taglist.vim                                                                                  0000644 0001750 0001750 00000451262 12113111264 015240  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              " File: taglist.vim
" Author: Yegappan Lakshmanan (yegappan AT yahoo DOT com)
" Version: 4.6
" Last Modified: Feb 26, 2013
" Copyright: Copyright (C) 2002-2013 Yegappan Lakshmanan
"            Permission is hereby granted to use and distribute this code,
"            with or without modifications, provided that this copyright
"            notice is copied with it. Like anything else that's free,
"            taglist.vim is provided *as is* and comes with no warranty of any
"            kind, either expressed or implied. In no event will the copyright
"            holder be liable for any damamges resulting from the use of this
"            software.
"
" The "Tag List" plugin is a source code browser plugin for Vim and provides
" an overview of the structure of the programming language files and allows
" you to efficiently browse through source code files for different
" programming languages.  You can visit the taglist plugin home page for more
" information:
"
"       http://vim-taglist.sourceforge.net
"
" You can subscribe to the taglist mailing list to post your questions
" or suggestions for improvement or to report bugs. Visit the following
" page for subscribing to the mailing list:
"
"       http://groups.yahoo.com/group/taglist/
"
" For more information about using this plugin, after installing the
" taglist plugin, use the ":help taglist" command.
"
" Installation
" ------------
" 1. Download the taglist.zip file and unzip the files to the $HOME/.vim
"    or the $HOME/vimfiles or the $VIM/vimfiles directory. This should
"    unzip the following two files (the directory structure should be
"    preserved):
"
"       plugin/taglist.vim - main taglist plugin file
"       doc/taglist.txt    - documentation (help) file
"
"    Refer to the 'add-plugin', 'add-global-plugin' and 'runtimepath'
"    Vim help pages for more details about installing Vim plugins.
" 2. Change to the $HOME/.vim/doc or $HOME/vimfiles/doc or
"    $VIM/vimfiles/doc directory, start Vim and run the ":helptags ."
"    command to process the taglist help file.
" 3. If the exuberant ctags utility is not present in your PATH, then set the
"    Tlist_Ctags_Cmd variable to point to the location of the exuberant ctags
"    utility (not to the directory) in the .vimrc file.
" 4. If you are running a terminal/console version of Vim and the
"    terminal doesn't support changing the window width then set the
"    'Tlist_Inc_Winwidth' variable to 0 in the .vimrc file.
" 5. Restart Vim.
" 6. You can now use the ":TlistToggle" command to open/close the taglist
"    window. You can use the ":help taglist" command to get more
"    information about using the taglist plugin.
"
" ****************** Do not modify after this line ************************

" Line continuation used here
if !exists('s:cpo_save')
    " If the taglist plugin is sourced recursively, the 'cpo' setting will be
    " set to the default value.  To avoid this problem, save the cpo setting
    " only when the plugin is loaded for the first time.
    let s:cpo_save = &cpo
endif
set cpo&vim

if !exists('loaded_taglist')
    " First time loading the taglist plugin
    "
    " To speed up the loading of Vim, the taglist plugin uses autoload
    " mechanism to load the taglist functions.
    " Only define the configuration variables, user commands and some
    " auto-commands and finish sourcing the file

    " The taglist plugin requires the built-in Vim system() function. If this
    " function is not available, then don't load the plugin.
    if !exists('*system')
        echomsg 'Taglist: Vim system() built-in function is not available. ' .
                    \ 'Plugin is not loaded.'
        let loaded_taglist = 'no'
        let &cpo = s:cpo_save
        finish
    endif

    " Location of the exuberant ctags tool
    if !exists('Tlist_Ctags_Cmd')
        if executable('exuberant-ctags')
            " On Debian Linux, exuberant ctags is installed
            " as exuberant-ctags
            let Tlist_Ctags_Cmd = 'exuberant-ctags'
        elseif executable('exctags')
            " On Free-BSD, exuberant ctags is installed as exctags
            let Tlist_Ctags_Cmd = 'exctags'
        elseif executable('ctags')
            let Tlist_Ctags_Cmd = 'ctags'
        elseif executable('ctags.exe')
            let Tlist_Ctags_Cmd = 'ctags.exe'
        elseif executable('tags')
            let Tlist_Ctags_Cmd = 'tags'
        else
            echomsg 'Taglist: Exuberant ctags (http://ctags.sf.net) ' .
                        \ 'not found in PATH. Plugin is not loaded.'
            " Skip loading the plugin
            let loaded_taglist = 'no'
            let &cpo = s:cpo_save
            finish
        endif
    endif


    " Automatically open the taglist window on Vim startup
    if !exists('Tlist_Auto_Open')
        let Tlist_Auto_Open = 0
    endif

    " When the taglist window is toggle opened, move the cursor to the
    " taglist window
    if !exists('Tlist_GainFocus_On_ToggleOpen')
        let Tlist_GainFocus_On_ToggleOpen = 0
    endif

    " Process files even when the taglist window is not open
    if !exists('Tlist_Process_File_Always')
        let Tlist_Process_File_Always = 0
    endif

    if !exists('Tlist_Show_Menu')
        let Tlist_Show_Menu = 0
    endif

    " Tag listing sort type - 'name' or 'order'
    if !exists('Tlist_Sort_Type')
        let Tlist_Sort_Type = 'order'
    endif

    " Tag listing window split (horizontal/vertical) control
    if !exists('Tlist_Use_Horiz_Window')
        let Tlist_Use_Horiz_Window = 0
    endif

    " Open the vertically split taglist window on the left or on the right
    " side.  This setting is relevant only if Tlist_Use_Horiz_Window is set to
    " zero (i.e.  only for vertically split windows)
    if !exists('Tlist_Use_Right_Window')
        let Tlist_Use_Right_Window = 0
    endif

    " Increase Vim window width to display vertically split taglist window.
    " For MS-Windows version of Vim running in a MS-DOS window, this must be
    " set to 0 otherwise the system may hang due to a Vim limitation.
    if !exists('Tlist_Inc_Winwidth')
        if (has('win16') || has('win95')) && !has('gui_running')
            let Tlist_Inc_Winwidth = 0
        else
            let Tlist_Inc_Winwidth = 1
        endif
    endif

    " Vertically split taglist window width setting
    if !exists('Tlist_WinWidth')
        let Tlist_WinWidth = 30
    endif

    " Horizontally split taglist window height setting
    if !exists('Tlist_WinHeight')
        let Tlist_WinHeight = 10
    endif

    " Display tag prototypes or tag names in the taglist window
    if !exists('Tlist_Display_Prototype')
        let Tlist_Display_Prototype = 0
    endif

    " Display tag scopes in the taglist window
    if !exists('Tlist_Display_Tag_Scope')
        let Tlist_Display_Tag_Scope = 1
    endif

    " Use single left mouse click to jump to a tag. By default this is disabled.
    " Only double click using the mouse will be processed.
    if !exists('Tlist_Use_SingleClick')
        let Tlist_Use_SingleClick = 0
    endif

    " Control whether additional help is displayed as part of the taglist or
    " not.  Also, controls whether empty lines are used to separate the tag
    " tree.
    if !exists('Tlist_Compact_Format')
        let Tlist_Compact_Format = 0
    endif

    " Exit Vim if only the taglist window is currently open. By default, this is
    " set to zero.
    if !exists('Tlist_Exit_OnlyWindow')
        let Tlist_Exit_OnlyWindow = 0
    endif

    " Automatically close the folds for the non-active files in the taglist
    " window
    if !exists('Tlist_File_Fold_Auto_Close')
        let Tlist_File_Fold_Auto_Close = 0
    endif

    " Close the taglist window when a tag is selected
    if !exists('Tlist_Close_On_Select')
        let Tlist_Close_On_Select = 0
    endif

    " Automatically update the taglist window to display tags for newly
    " edited files
    if !exists('Tlist_Auto_Update')
        let Tlist_Auto_Update = 1
    endif

    " Automatically highlight the current tag
    if !exists('Tlist_Auto_Highlight_Tag')
        let Tlist_Auto_Highlight_Tag = 1
    endif

    " Automatically highlight the current tag on entering a buffer
    if !exists('Tlist_Highlight_Tag_On_BufEnter')
        let Tlist_Highlight_Tag_On_BufEnter = 1
    endif

    " Enable fold column to display the folding for the tag tree
    if !exists('Tlist_Enable_Fold_Column')
        let Tlist_Enable_Fold_Column = 1
    endif

    " Display the tags for only one file in the taglist window
    if !exists('Tlist_Show_One_File')
        let Tlist_Show_One_File = 0
    endif

    if !exists('Tlist_Max_Submenu_Items')
        let Tlist_Max_Submenu_Items = 20
    endif

    if !exists('Tlist_Max_Tag_Length')
        let Tlist_Max_Tag_Length = 10
    endif

    " Do not change the name of the taglist title variable. The winmanager
    " plugin relies on this name to determine the title for the taglist
    " plugin.
    let TagList_title = "__Tag_List__"

    " Taglist debug messages
    let s:tlist_msg = ''

    " Define the taglist autocommand to automatically open the taglist window
    " on Vim startup
    if g:Tlist_Auto_Open
        autocmd VimEnter * nested call s:Tlist_Window_Check_Auto_Open()
    endif

    " Refresh the taglist
    if g:Tlist_Process_File_Always
        autocmd BufEnter * call s:Tlist_Refresh()
    endif

    if g:Tlist_Show_Menu
        autocmd GUIEnter * call s:Tlist_Menu_Init()
    endif

    " When the taglist buffer is created when loading a Vim session file,
    " the taglist buffer needs to be initialized. The BufFilePost event
    " is used to handle this case.
    autocmd BufFilePost __Tag_List__ call s:Tlist_Vim_Session_Load()

    " Define the user commands to manage the taglist window
    command! -nargs=0 -bar TlistToggle call s:Tlist_Window_Toggle()
    command! -nargs=0 -bar TlistOpen call s:Tlist_Window_Open()
    " For backwards compatiblity define the Tlist command
    command! -nargs=0 -bar Tlist TlistToggle
    command! -nargs=+ -complete=file TlistAddFiles
                \  call s:Tlist_Add_Files(<f-args>)
    command! -nargs=+ -complete=dir TlistAddFilesRecursive
                \ call s:Tlist_Add_Files_Recursive(<f-args>)
    command! -nargs=0 -bar TlistClose call s:Tlist_Window_Close()
    command! -nargs=0 -bar TlistUpdate call s:Tlist_Update_Current_File()
    command! -nargs=0 -bar TlistHighlightTag call s:Tlist_Window_Highlight_Tag(
                        \ fnamemodify(bufname('%'), ':p'), line('.'), 2, 1)
    " For backwards compatiblity define the TlistSync command
    command! -nargs=0 -bar TlistSync TlistHighlightTag
    command! -nargs=* -complete=buffer TlistShowPrototype
                \ echo Tlist_Get_Tag_Prototype_By_Line(<f-args>)
    command! -nargs=* -complete=buffer TlistShowTag
                \ echo Tlist_Get_Tagname_By_Line(<f-args>)
    command! -nargs=* -complete=file TlistSessionLoad
                \ call s:Tlist_Session_Load(<q-args>)
    command! -nargs=* -complete=file TlistSessionSave
                \ call s:Tlist_Session_Save(<q-args>)
    command! -bar TlistLock let Tlist_Auto_Update=0
    command! -bar TlistUnlock let Tlist_Auto_Update=1

    " Commands for enabling/disabling debug and to display debug messages
    command! -nargs=? -complete=file -bar TlistDebug
                \ call s:Tlist_Debug_Enable(<q-args>)
    command! -nargs=0 -bar TlistUndebug  call s:Tlist_Debug_Disable()
    command! -nargs=0 -bar TlistMessages call s:Tlist_Debug_Show()

    " Define autocommands to autoload the taglist plugin when needed.

    " Trick to get the current script ID
    map <SID>xx <SID>xx
    let s:tlist_sid = substitute(maparg('<SID>xx'), '<SNR>\(\d\+_\)xx$',
                                \ '\1', '')
    unmap <SID>xx

    exe 'autocmd FuncUndefined *' . s:tlist_sid . 'Tlist_* source ' .
                \ escape(expand('<sfile>'), ' ')
    exe 'autocmd FuncUndefined *' . s:tlist_sid . 'Tlist_Window_* source ' .
                \ escape(expand('<sfile>'), ' ')
    exe 'autocmd FuncUndefined *' . s:tlist_sid . 'Tlist_Menu_* source ' .
                \ escape(expand('<sfile>'), ' ')
    exe 'autocmd FuncUndefined Tlist_* source ' .
                \ escape(expand('<sfile>'), ' ')
    exe 'autocmd FuncUndefined TagList_* source ' .
                \ escape(expand('<sfile>'), ' ')

    let loaded_taglist = 'fast_load_done'

    if g:Tlist_Show_Menu && has('gui_running')
        call s:Tlist_Menu_Init()
    endif

    " restore 'cpo'
    let &cpo = s:cpo_save
    finish
endif

if !exists('s:tlist_sid')
    " Two or more versions of taglist plugin are installed. Don't
    " load this version of the plugin.
    let &cpo = s:cpo_save
    finish
endif

unlet! s:tlist_sid

if loaded_taglist != 'fast_load_done'
    " restore 'cpo'
    let &cpo = s:cpo_save
    finish
endif

" Taglist plugin functionality is available
let loaded_taglist = 'available'

"------------------- end of user configurable options --------------------

" Default language specific settings for supported file types and tag types
"
" Variable name format:
"
"       s:tlist_def_{vim_ftype}_settings
"
" vim_ftype - Filetype detected by Vim
"
" Value format:
"
"       <ctags_ftype>;<flag>:<name>;<flag>:<name>;...
"
" ctags_ftype - File type supported by exuberant ctags
" flag        - Flag supported by exuberant ctags to generate a tag type
" name        - Name of the tag type used in the taglist window to display the
"               tags of this type
"

" Ant language
let s:tlist_def_ant_settings = 'ant;p:projects;t:targets'

" assembly language
let s:tlist_def_asm_settings = 'asm;d:define;l:label;m:macro;t:type'

" aspperl language
let s:tlist_def_aspperl_settings =
            \ 'asp;c:constants;v:variable;f:function;s:subroutine'

" aspvbs language
let s:tlist_def_aspvbs_settings =
            \ 'asp;c:constants;v:variable;f:function;s:subroutine'

" awk language
let s:tlist_def_awk_settings = 'awk;f:function'

" basic language
let s:tlist_def_basic_settings =
            \ 'basic;c:constant;l:label;g:enum;v:variable;' .
            \ 't:type;f:function'

" beta language
let s:tlist_def_beta_settings = 'beta;f:fragment;s:slot;v:pattern'

" c language
let s:tlist_def_c_settings = 'c;d:macro;g:enum;s:struct;u:union;t:typedef;' .
                           \ 'v:variable;f:function'

" c++ language
let s:tlist_def_cpp_settings = 'c++;n:namespace;v:variable;d:macro;t:typedef;' .
                             \ 'c:class;g:enum;s:struct;u:union;f:function'

" c# language
let s:tlist_def_cs_settings = 'c#;d:macro;t:typedef;n:namespace;c:class;' .
                             \ 'E:event;g:enum;s:struct;i:interface;' .
                             \ 'p:properties;m:method'

" cobol language
let s:tlist_def_cobol_settings = 'cobol;d:data;f:file;g:group;p:paragraph;' .
                               \ 'P:program;s:section'
" D programming language
let s:tlist_def_d_settings = 'c++;n:namespace;v:variable;t:typedef;' .
                        \'c:class;g:enum;s:struct;u:union;f:function'

" Dosbatch
let s:tlist_def_dosbatch_settings = 'dosbatch;l:labels;v:variables'

" eiffel language
let s:tlist_def_eiffel_settings = 'eiffel;c:class;f:feature'

" erlang language
let s:tlist_def_erlang_settings = 'erlang;d:macro;r:record;m:module;f:function'

" expect (same as tcl) language
let s:tlist_def_expect_settings = 'tcl;c:class;f:method;p:procedure'

" flex
let s:tlist_def_flex_settings = 'flex;v:global;c:classes;p:properties;'.
            \ 'm:methods;f:functions;x:mxtags'

" fortran language
let s:tlist_def_fortran_settings = 'fortran;p:program;b:block data;' .
                    \ 'c:common;e:entry;i:interface;k:type;l:label;m:module;' .
                    \ 'n:namelist;t:derived;v:variable;f:function;s:subroutine'

" GO language
let s:tlist_def_go_settings = 'go;f:function;p:package;t:struct'

" HTML language
let s:tlist_def_html_settings = 'html;a:anchor;f:function'

" java language
let s:tlist_def_java_settings = 'java;p:package;c:class;i:interface;' .
                              \ 'g:enum;f:field;m:method'

" javascript language
let s:tlist_def_javascript_settings =
            \ 'javascript;c:class;m:method;v:global;f:function;p:properties'

" lisp language
let s:tlist_def_lisp_settings = 'lisp;f:function'

" lua language
let s:tlist_def_lua_settings = 'lua;f:function'

" makefiles
let s:tlist_def_make_settings = 'make;m:macro'

" Matlab
let s:tlist_def_matlab_settings = 'matlab;f:function'

" Ocamal
let s:tlist_def_ocamal_settings = 'ocamal;M:module;v:global;t:type;'.
            \ 'c:class;f:function;m:method;C:constructor;e:exception'

" pascal language
let s:tlist_def_pascal_settings = 'pascal;f:function;p:procedure'

" perl language
let s:tlist_def_perl_settings = 'perl;c:constant;l:label;p:package;s:subroutine'

" php language
let s:tlist_def_php_settings =
            \ 'php;c:class;i:interface;d:constant;v:variable;f:function'

" python language
let s:tlist_def_python_settings = 'python;c:class;m:member;f:function'

" cython language
let tlist_pyrex_settings='python;c:classe;m:memder;f:function'

" rexx language
let s:tlist_def_rexx_settings = 'rexx;s:subroutine'

" ruby language
let s:tlist_def_ruby_settings = 'ruby;c:class;f:method;F:function;' .
                              \ 'm:singleton method'

" scheme language
let s:tlist_def_scheme_settings = 'scheme;s:set;f:function'

" shell language
let s:tlist_def_sh_settings = 'sh;f:function'

" C shell language
let s:tlist_def_csh_settings = 'sh;f:function'

" Z shell language
let s:tlist_def_zsh_settings = 'sh;f:function'

" slang language
let s:tlist_def_slang_settings = 'slang;n:namespace;f:function'

" sml language
let s:tlist_def_sml_settings = 'sml;e:exception;c:functor;s:signature;' .
            \ 'r:structure;t:type;v:value;c:functor;f:function'

" sql language
let s:tlist_def_sql_settings = 'sql;f:functions;' .
           \ 'P:packages;p:procedures;t:tables;T:triggers;' .
           \ 'v:variables;e:events;U:publications;R:services;' .
           \ 'D:domains;x:MLTableScripts;y:MLConnScripts;z:MLProperties;'.
           \ 'i:indexes;c:cursors;V:views;'.
           \ 'd:prototypes;'.
           \ 'l:local variables;'.
           \ 'F:record fields;'.
           \ 'L:block label;'.
           \ 'r:records;'.
           \ 's:subtypes'

" tcl language
let s:tlist_def_tcl_settings = 'tcl;c:class;f:method;m:method;p:procedure'

" Tex
let s:tlist_def_tex_settings = 'tex;c:chapters;s:sections;u:subsections;'.
            \ 'b:subsubsections;p:parts;P:paragraphs;G:subparagraphs'

" vera language
let s:tlist_def_vera_settings = 'vera;c:class;d:macro;e:enumerator;' .
                                \ 'f:function;g:enum;m:member;p:program;' .
                                \ 'P:prototype;t:task;T:typedef;v:variable;' .
                                \ 'x:externvar'

"verilog language
let s:tlist_def_verilog_settings = 'verilog;m:module;c:constant;P:parameter;' .
            \ 'e:event;r:register;t:task;w:write;p:port;v:variable;f:function'

" VHDL
let s:tlist_def_vhdl_settings = 'vhdl;c:constant;t:type;T:subtype;r:record;e:entity;f:function;p:procedure;P:package'

" vim language
let s:tlist_def_vim_settings =
            \ 'vim;v:variable;a:autocmds;c:commands;m:map;f:function'

" yacc language
let s:tlist_def_yacc_settings = 'yacc;l:label'

"------------------- end of language specific options --------------------

" Vim window size is changed by the taglist plugin or not
let s:tlist_winsize_chgd = -1
" Taglist window is maximized or not
let s:tlist_win_maximized = 0
" Name of files in the taglist
let s:tlist_file_names=''
" Number of files in the taglist
let s:tlist_file_count = 0
" Number of filetypes supported by taglist
let s:tlist_ftype_count = 0
" Is taglist part of other plugins like winmanager or cream?
let s:tlist_app_name = "none"
" Are we displaying brief help text
let s:tlist_brief_help = 1
" List of files removed on user request
let s:tlist_removed_flist = ""
" Index of current file displayed in the taglist window
let s:tlist_cur_file_idx = -1
" Taglist menu is empty or not
let s:tlist_menu_empty = 1

" An autocommand is used to refresh the taglist window when entering any
" buffer. We don't want to refresh the taglist window if we are entering the
" file window from one of the taglist functions. The 'Tlist_Skip_Refresh'
" variable is used to skip the refresh of the taglist window and is set
" and cleared appropriately.
let s:Tlist_Skip_Refresh = 0

" Tlist_Window_Display_Help()
function! s:Tlist_Window_Display_Help()
    if s:tlist_app_name == "winmanager"
        " To handle a bug in the winmanager plugin, add a space at the
        " last line
        call setline('$', ' ')
    endif

    if s:tlist_brief_help
        " Add the brief help
        call append(0, '" Press <F1> to display help text')
    else
        " Add the extensive help
        call append(0, '" <enter> : Jump to tag definition')
        call append(1, '" o : Jump to tag definition in new window')
        call append(2, '" p : Preview the tag definition')
        call append(3, '" <space> : Display tag prototype')
        call append(4, '" u : Update tag list')
        call append(5, '" s : Select sort field')
        call append(6, '" d : Remove file from taglist')
        call append(7, '" x : Zoom-out/Zoom-in taglist window')
        call append(8, '" + : Open a fold')
        call append(9, '" - : Close a fold')
        call append(10, '" * : Open all folds')
        call append(11, '" = : Close all folds')
        call append(12, '" [[ : Move to the start of previous file')
        call append(13, '" ]] : Move to the start of next file')
        call append(14, '" q : Close the taglist window')
        call append(15, '" <F1> : Remove help text')
    endif
endfunction

" Tlist_Window_Toggle_Help_Text()
" Toggle taglist plugin help text between the full version and the brief
" version
function! s:Tlist_Window_Toggle_Help_Text()
    if g:Tlist_Compact_Format
        " In compact display mode, do not display help
        return
    endif

    " Include the empty line displayed after the help text
    let brief_help_size = 1
    let full_help_size = 16

    setlocal modifiable

    " Set report option to a huge value to prevent informational messages
    " while deleting the lines
    let old_report = &report
    set report=99999

    " Remove the currently highlighted tag. Otherwise, the help text
    " might be highlighted by mistake
    match none

    " Toggle between brief and full help text
    if s:tlist_brief_help
        let s:tlist_brief_help = 0

        " Remove the previous help
        exe '1,' . brief_help_size . ' delete _'

        " Adjust the start/end line numbers for the files
        call s:Tlist_Window_Update_Line_Offsets(0, 1, full_help_size - brief_help_size)
    else
        let s:tlist_brief_help = 1

        " Remove the previous help
        exe '1,' . full_help_size . ' delete _'

        " Adjust the start/end line numbers for the files
        call s:Tlist_Window_Update_Line_Offsets(0, 0, full_help_size - brief_help_size)
    endif

    call s:Tlist_Window_Display_Help()

    " Restore the report option
    let &report = old_report

    setlocal nomodifiable
endfunction

" Taglist debug support
let s:tlist_debug = 0

" File for storing the debug messages
let s:tlist_debug_file = ''

" Tlist_Debug_Enable
" Enable logging of taglist debug messages.
function! s:Tlist_Debug_Enable(...)
    let s:tlist_debug = 1

    " Check whether a valid file name is supplied.
    if a:1 != ''
        let s:tlist_debug_file = fnamemodify(a:1, ':p')

        " Empty the log file
        exe 'redir! > ' . s:tlist_debug_file
        redir END

        " Check whether the log file is present/created
        if !filewritable(s:tlist_debug_file)
            call s:Tlist_Warning_Msg('Taglist: Unable to create log file '
                        \ . s:tlist_debug_file)
            let s:tlist_debug_file = ''
        endif
    endif
endfunction

" Tlist_Debug_Disable
" Disable logging of taglist debug messages.
function! s:Tlist_Debug_Disable(...)
    let s:tlist_debug = 0
    let s:tlist_debug_file = ''
endfunction

" Tlist_Debug_Show
" Display the taglist debug messages in a new window
function! s:Tlist_Debug_Show()
    if s:tlist_msg == ''
        call s:Tlist_Warning_Msg('Taglist: No debug messages')
        return
    endif

    " Open a new window to display the taglist debug messages
    new taglist_debug.txt
    " Delete all the lines (if the buffer already exists)
    silent! %delete _
    " Add the messages
    silent! put =s:tlist_msg
    " Move the cursor to the first line
    normal! gg
endfunction

" Tlist_Log_Msg
" Log the supplied debug message along with the time
function! s:Tlist_Log_Msg(msg)
    if s:tlist_debug
        if s:tlist_debug_file != ''
            exe 'redir >> ' . s:tlist_debug_file
            silent echon strftime('%H:%M:%S') . ': ' . a:msg . "\n"
            redir END
        else
            " Log the message into a variable
            " Retain only the last 3000 characters
            let len = strlen(s:tlist_msg)
            if len > 3000
                let s:tlist_msg = strpart(s:tlist_msg, len - 3000)
            endif
            let s:tlist_msg = s:tlist_msg . strftime('%H:%M:%S') . ': ' .
                        \ a:msg . "\n"
        endif
    endif
endfunction

" Tlist_Warning_Msg()
" Display a message using WarningMsg highlight group
function! s:Tlist_Warning_Msg(msg)
    echohl WarningMsg
    echomsg a:msg
    echohl None
endfunction

" Last returned file index for file name lookup.
" Used to speed up file lookup
let s:tlist_file_name_idx_cache = -1

" Tlist_Get_File_Index()
" Return the index of the specified filename
function! s:Tlist_Get_File_Index(fname)
    if s:tlist_file_count == 0 || a:fname == ''
        return -1
    endif

    " If the new filename is same as the last accessed filename, then
    " return that index
    if s:tlist_file_name_idx_cache != -1 &&
                \ s:tlist_file_name_idx_cache < s:tlist_file_count
        if s:tlist_{s:tlist_file_name_idx_cache}_filename == a:fname
            " Same as the last accessed file
            return s:tlist_file_name_idx_cache
        endif
    endif

    " First, check whether the filename is present
    let s_fname = a:fname . "\n"
    let i = stridx(s:tlist_file_names, s_fname)
    if i == -1
        let s:tlist_file_name_idx_cache = -1
        return -1
    endif

    " Second, compute the file name index
    let nl_txt = substitute(strpart(s:tlist_file_names, 0, i), "[^\n]", '', 'g')
    let s:tlist_file_name_idx_cache = strlen(nl_txt)
    return s:tlist_file_name_idx_cache
endfunction

" Last returned file index for line number lookup.
" Used to speed up file lookup
let s:tlist_file_lnum_idx_cache = -1

" Tlist_Window_Get_File_Index_By_Linenum()
" Return the index of the filename present in the specified line number
" Line number refers to the line number in the taglist window
function! s:Tlist_Window_Get_File_Index_By_Linenum(lnum)
    call s:Tlist_Log_Msg('Tlist_Window_Get_File_Index_By_Linenum (' . a:lnum . ')')

    " First try to see whether the new line number is within the range
    " of the last returned file
    if s:tlist_file_lnum_idx_cache != -1 &&
                \ s:tlist_file_lnum_idx_cache < s:tlist_file_count
        if a:lnum >= s:tlist_{s:tlist_file_lnum_idx_cache}_start &&
                    \ a:lnum <= s:tlist_{s:tlist_file_lnum_idx_cache}_end
            return s:tlist_file_lnum_idx_cache
        endif
    endif

    let fidx = -1

    if g:Tlist_Show_One_File
        " Displaying only one file in the taglist window. Check whether
        " the line is within the tags displayed for that file
        if s:tlist_cur_file_idx != -1
            if a:lnum >= s:tlist_{s:tlist_cur_file_idx}_start
                        \ && a:lnum <= s:tlist_{s:tlist_cur_file_idx}_end
                let fidx = s:tlist_cur_file_idx
            endif

        endif
    else
        " Do a binary search in the taglist
        let left = 0
        let right = s:tlist_file_count - 1

        while left < right
            let mid = (left + right) / 2

            if a:lnum >= s:tlist_{mid}_start && a:lnum <= s:tlist_{mid}_end
                let s:tlist_file_lnum_idx_cache = mid
                return mid
            endif

            if a:lnum < s:tlist_{mid}_start
                let right = mid - 1
            else
                let left = mid + 1
            endif
        endwhile

        if left >= 0 && left < s:tlist_file_count
                    \ && a:lnum >= s:tlist_{left}_start
                    \ && a:lnum <= s:tlist_{left}_end
            let fidx = left
        endif
    endif

    let s:tlist_file_lnum_idx_cache = fidx

    return fidx
endfunction

" Tlist_Exe_Cmd_No_Acmds
" Execute the specified Ex command after disabling autocommands
function! s:Tlist_Exe_Cmd_No_Acmds(cmd)
    let old_eventignore = &eventignore
    set eventignore=all
    exe a:cmd
    let &eventignore = old_eventignore
endfunction

" Tlist_Skip_File()
" Check whether tag listing is supported for the specified file
function! s:Tlist_Skip_File(filename, ftype)
    " Skip buffers with no names and buffers with filetype not set
    if a:filename == '' || a:ftype == ''
        return 1
    endif

    " Skip files which are not supported by exuberant ctags
    " First check whether default settings for this filetype are available.
    " If it is not available, then check whether user specified settings are
    " available. If both are not available, then don't list the tags for this
    " filetype
    let var = 's:tlist_def_' . a:ftype . '_settings'
    if !exists(var)
        let var = 'g:tlist_' . a:ftype . '_settings'
        if !exists(var)
            return 1
        endif
    endif

    " Skip files which are not readable or files which are not yet stored
    " to the disk
    if !filereadable(a:filename)
        return 1
    endif

    return 0
endfunction

" Tlist_User_Removed_File
" Returns 1 if a file is removed by a user from the taglist
function! s:Tlist_User_Removed_File(filename)
    return stridx(s:tlist_removed_flist, a:filename . "\n") != -1
endfunction

" Tlist_Update_Remove_List
" Update the list of user removed files from the taglist
" add == 1, add the file to the removed list
" add == 0, delete the file from the removed list
function! s:Tlist_Update_Remove_List(filename, add)
    if a:add
        let s:tlist_removed_flist = s:tlist_removed_flist . a:filename . "\n"
    else
        let idx = stridx(s:tlist_removed_flist, a:filename . "\n")
        let text_before = strpart(s:tlist_removed_flist, 0, idx)
        let rem_text = strpart(s:tlist_removed_flist, idx)
        let next_idx = stridx(rem_text, "\n")
        let text_after = strpart(rem_text, next_idx + 1)

        let s:tlist_removed_flist = text_before . text_after
    endif
endfunction

" Tlist_FileType_Init
" Initialize the ctags arguments and tag variable for the specified
" file type
function! s:Tlist_FileType_Init(ftype)
    call s:Tlist_Log_Msg('Tlist_FileType_Init (' . a:ftype . ')')
    " If the user didn't specify any settings, then use the default
    " ctags args. Otherwise, use the settings specified by the user
    let var = 'g:tlist_' . a:ftype . '_settings'
    if exists(var)
        " User specified ctags arguments
        let settings = {var} . ';'
    else
        " Default ctags arguments
        let var = 's:tlist_def_' . a:ftype . '_settings'
        if !exists(var)
            " No default settings for this file type. This filetype is
            " not supported
            return 0
        endif
        let settings = s:tlist_def_{a:ftype}_settings . ';'
    endif

    let msg = 'Taglist: Invalid ctags option setting - ' . settings

    " Format of the option that specifies the filetype and ctags arugments:
    "
    "       <language_name>;flag1:name1;flag2:name2;flag3:name3
    "

    " Extract the file type to pass to ctags. This may be different from the
    " file type detected by Vim
    let pos = stridx(settings, ';')
    if pos == -1
        call s:Tlist_Warning_Msg(msg)
        return 0
    endif
    let ctags_ftype = strpart(settings, 0, pos)
    if ctags_ftype == ''
        call s:Tlist_Warning_Msg(msg)
        return 0
    endif
    " Make sure a valid filetype is supplied. If the user didn't specify a
    " valid filetype, then the ctags option settings may be treated as the
    " filetype
    if ctags_ftype =~ ':'
        call s:Tlist_Warning_Msg(msg)
        return 0
    endif

    " Remove the file type from settings
    let settings = strpart(settings, pos + 1)
    if settings == ''
        call s:Tlist_Warning_Msg(msg)
        return 0
    endif

    " Process all the specified ctags flags. The format is
    " flag1:name1;flag2:name2;flag3:name3
    let ctags_flags = ''
    let cnt = 0
    while settings != ''
        " Extract the flag
        let pos = stridx(settings, ':')
        if pos == -1
            call s:Tlist_Warning_Msg(msg)
            return 0
        endif
        let flag = strpart(settings, 0, pos)
        if flag == ''
            call s:Tlist_Warning_Msg(msg)
            return 0
        endif
        " Remove the flag from settings
        let settings = strpart(settings, pos + 1)

        " Extract the tag type name
        let pos = stridx(settings, ';')
        if pos == -1
            call s:Tlist_Warning_Msg(msg)
            return 0
        endif
        let name = strpart(settings, 0, pos)
        if name == ''
            call s:Tlist_Warning_Msg(msg)
            return 0
        endif
        let settings = strpart(settings, pos + 1)

        let cnt = cnt + 1

        let s:tlist_{a:ftype}_{cnt}_name = flag
        let s:tlist_{a:ftype}_{cnt}_fullname = name
        let ctags_flags = ctags_flags . flag
    endwhile

    let s:tlist_{a:ftype}_ctags_args = '--language-force=' . ctags_ftype .
                            \ ' --' . ctags_ftype . '-types=' . ctags_flags
    let s:tlist_{a:ftype}_count = cnt
    let s:tlist_{a:ftype}_ctags_flags = ctags_flags

    " Save the filetype name
    let s:tlist_ftype_{s:tlist_ftype_count}_name = a:ftype
    let s:tlist_ftype_count = s:tlist_ftype_count + 1

    return 1
endfunction

" Tlist_Detect_Filetype
" Determine the filetype for the specified file using the filetypedetect
" autocmd.
function! s:Tlist_Detect_Filetype(fname)
    " Ignore the filetype autocommands
    let old_eventignore = &eventignore
    set eventignore=FileType

    " Save the 'filetype', as this will be changed temporarily
    let old_filetype = &filetype

    " Run the filetypedetect group of autocommands to determine
    " the filetype
    exe 'doautocmd filetypedetect BufRead ' . a:fname

    " Save the detected filetype
    let ftype = &filetype

    " Restore the previous state
    let &filetype = old_filetype
    let &eventignore = old_eventignore

    return ftype
endfunction

" Tlist_Get_Buffer_Filetype
" Get the filetype for the specified buffer
function! s:Tlist_Get_Buffer_Filetype(bnum)
    let buf_ft = getbufvar(a:bnum, '&filetype')

    " Check whether 'filetype' contains multiple file types separated by '.'
    " If it is, then use the first file type
    if buf_ft =~ '\.'
        let buf_ft = matchstr(buf_ft, '[^.]\+')
    endif

    if bufloaded(a:bnum)
        " For loaded buffers, the 'filetype' is already determined
        return buf_ft
    endif

    " For unloaded buffers, if the 'filetype' option is set, return it
    if buf_ft != ''
        return buf_ft
    endif

    " Skip non-existent buffers
    if !bufexists(a:bnum)
        return ''
    endif

    " For buffers whose filetype is not yet determined, try to determine
    " the filetype
    let bname = bufname(a:bnum)

    return s:Tlist_Detect_Filetype(bname)
endfunction

" Tlist_Discard_TagInfo
" Discard the stored tag information for a file
function! s:Tlist_Discard_TagInfo(fidx)
    call s:Tlist_Log_Msg('Tlist_Discard_TagInfo (' .
                \ s:tlist_{a:fidx}_filename . ')')
    let ftype = s:tlist_{a:fidx}_filetype

    " Discard information about the tags defined in the file
    let i = 1
    while i <= s:tlist_{a:fidx}_tag_count
        let fidx_i = 's:tlist_' . a:fidx . '_' . i
        unlet! {fidx_i}_tag
        unlet! {fidx_i}_tag_name
        unlet! {fidx_i}_tag_type
        unlet! {fidx_i}_ttype_idx
        unlet! {fidx_i}_tag_proto
        unlet! {fidx_i}_tag_scope
        unlet! {fidx_i}_tag_searchpat
        unlet! {fidx_i}_tag_linenum
        let i = i + 1
    endwhile

    let s:tlist_{a:fidx}_tag_count = 0

    " Discard information about tag type groups
    let i = 1
    while i <= s:tlist_{ftype}_count
        let ttype = s:tlist_{ftype}_{i}_name
        if s:tlist_{a:fidx}_{ttype} != ''
            let fidx_ttype = 's:tlist_' . a:fidx . '_' . ttype
            let {fidx_ttype} = ''
            let {fidx_ttype}_offset = 0
            let cnt = {fidx_ttype}_count
            let {fidx_ttype}_count = 0
            let j = 1
            while j <= cnt
                unlet! {fidx_ttype}_{j}
                let j = j + 1
            endwhile
        endif
        let i = i + 1
    endwhile

    " Discard the stored menu command also
    let s:tlist_{a:fidx}_menu_cmd = ''
endfunction

" Tlist_Window_Update_Line_Offsets
" Update the line offsets for tags for files starting from start_idx
" and displayed in the taglist window by the specified offset
function! s:Tlist_Window_Update_Line_Offsets(start_idx, increment, offset)
    let i = a:start_idx

    while i < s:tlist_file_count
        if s:tlist_{i}_visible
            " Update the start/end line number only if the file is visible
            if a:increment
                let s:tlist_{i}_start = s:tlist_{i}_start + a:offset
                let s:tlist_{i}_end = s:tlist_{i}_end + a:offset
            else
                let s:tlist_{i}_start = s:tlist_{i}_start - a:offset
                let s:tlist_{i}_end = s:tlist_{i}_end - a:offset
            endif
        endif
        let i = i + 1
    endwhile
endfunction

" Tlist_Discard_FileInfo
" Discard the stored information for a file
function! s:Tlist_Discard_FileInfo(fidx)
    call s:Tlist_Log_Msg('Tlist_Discard_FileInfo (' .
                \ s:tlist_{a:fidx}_filename . ')')
    call s:Tlist_Discard_TagInfo(a:fidx)

    let ftype = s:tlist_{a:fidx}_filetype

    let i = 1
    while i <= s:tlist_{ftype}_count
        let ttype = s:tlist_{ftype}_{i}_name
        unlet! s:tlist_{a:fidx}_{ttype}
        unlet! s:tlist_{a:fidx}_{ttype}_offset
        unlet! s:tlist_{a:fidx}_{ttype}_count
        let i = i + 1
    endwhile

    unlet! s:tlist_{a:fidx}_filename
    unlet! s:tlist_{a:fidx}_sort_type
    unlet! s:tlist_{a:fidx}_filetype
    unlet! s:tlist_{a:fidx}_mtime
    unlet! s:tlist_{a:fidx}_start
    unlet! s:tlist_{a:fidx}_end
    unlet! s:tlist_{a:fidx}_valid
    unlet! s:tlist_{a:fidx}_visible
    unlet! s:tlist_{a:fidx}_tag_count
    unlet! s:tlist_{a:fidx}_menu_cmd
endfunction

" Tlist_Window_Remove_File_From_Display
" Remove the specified file from display
function! s:Tlist_Window_Remove_File_From_Display(fidx)
    call s:Tlist_Log_Msg('Tlist_Window_Remove_File_From_Display (' .
                \ s:tlist_{a:fidx}_filename . ')')
    " If the file is not visible then no need to remove it
    if !s:tlist_{a:fidx}_visible
        return
    endif

    " Remove the tags displayed for the specified file from the window
    let start = s:tlist_{a:fidx}_start
    " Include the empty line after the last line also
    if g:Tlist_Compact_Format
        let end = s:tlist_{a:fidx}_end
    else
        let end = s:tlist_{a:fidx}_end + 1
    endif

    setlocal modifiable
    exe 'silent! ' . start . ',' . end . 'delete _'
    setlocal nomodifiable

    " Correct the start and end line offsets for all the files following
    " this file, as the tags for this file are removed
    call s:Tlist_Window_Update_Line_Offsets(a:fidx + 1, 0, end - start + 1)
endfunction

" Tlist_Remove_File
" Remove the file under the cursor or the specified file index
" user_request - User requested to remove the file from taglist
function! s:Tlist_Remove_File(file_idx, user_request)
    let fidx = a:file_idx

    if fidx == -1
        let fidx = s:Tlist_Window_Get_File_Index_By_Linenum(line('.'))
        if fidx == -1
            return
        endif
    endif
    call s:Tlist_Log_Msg('Tlist_Remove_File (' .
                \ s:tlist_{fidx}_filename . ', ' . a:user_request . ')')

    let save_winnr = winnr()
    let winnum = bufwinnr(g:TagList_title)
    if winnum != -1
        " Taglist window is open, remove the file from display

        if save_winnr != winnum
            let old_eventignore = &eventignore
            set eventignore=all
            exe winnum . 'wincmd w'
        endif

        call s:Tlist_Window_Remove_File_From_Display(fidx)

        if save_winnr != winnum
            exe save_winnr . 'wincmd w'
            let &eventignore = old_eventignore
        endif
    endif

    let fname = s:tlist_{fidx}_filename

    if a:user_request
        " As the user requested to remove the file from taglist,
        " add it to the removed list
        call s:Tlist_Update_Remove_List(fname, 1)
    endif

    " Remove the file name from the taglist list of filenames
    let idx = stridx(s:tlist_file_names, fname . "\n")
    let text_before = strpart(s:tlist_file_names, 0, idx)
    let rem_text = strpart(s:tlist_file_names, idx)
    let next_idx = stridx(rem_text, "\n")
    let text_after = strpart(rem_text, next_idx + 1)
    let s:tlist_file_names = text_before . text_after

    call s:Tlist_Discard_FileInfo(fidx)

    " Shift all the file variables by one index
    let i = fidx + 1

    while i < s:tlist_file_count
        let j = i - 1

        let s:tlist_{j}_filename = s:tlist_{i}_filename
        let s:tlist_{j}_sort_type = s:tlist_{i}_sort_type
        let s:tlist_{j}_filetype = s:tlist_{i}_filetype
        let s:tlist_{j}_mtime = s:tlist_{i}_mtime
        let s:tlist_{j}_start = s:tlist_{i}_start
        let s:tlist_{j}_end = s:tlist_{i}_end
        let s:tlist_{j}_valid = s:tlist_{i}_valid
        let s:tlist_{j}_visible = s:tlist_{i}_visible
        let s:tlist_{j}_tag_count = s:tlist_{i}_tag_count
        let s:tlist_{j}_menu_cmd = s:tlist_{i}_menu_cmd

        let k = 1
        while k <= s:tlist_{j}_tag_count
            let s:tlist_{j}_{k}_tag = s:tlist_{i}_{k}_tag
            let s:tlist_{j}_{k}_tag_name = s:tlist_{i}_{k}_tag_name
            let s:tlist_{j}_{k}_tag_type = s:Tlist_Get_Tag_Type_By_Tag(i, k)
            let s:tlist_{j}_{k}_ttype_idx = s:tlist_{i}_{k}_ttype_idx
            let s:tlist_{j}_{k}_tag_proto = s:Tlist_Get_Tag_Prototype(i, k)
            let s:tlist_{j}_{k}_tag_scope = s:Tlist_Get_Tag_Scope(i, k)
            let s:tlist_{j}_{k}_tag_searchpat = s:Tlist_Get_Tag_SearchPat(i, k)
            let s:tlist_{j}_{k}_tag_linenum = s:Tlist_Get_Tag_Linenum(i, k)
            let k = k + 1
        endwhile

        let ftype = s:tlist_{i}_filetype

        let k = 1
        while k <= s:tlist_{ftype}_count
            let ttype = s:tlist_{ftype}_{k}_name
            let s:tlist_{j}_{ttype} = s:tlist_{i}_{ttype}
            let s:tlist_{j}_{ttype}_offset = s:tlist_{i}_{ttype}_offset
            let s:tlist_{j}_{ttype}_count = s:tlist_{i}_{ttype}_count
            if s:tlist_{j}_{ttype} != ''
                let l = 1
                while l <= s:tlist_{j}_{ttype}_count
                    let s:tlist_{j}_{ttype}_{l} = s:tlist_{i}_{ttype}_{l}
                    let l = l + 1
                endwhile
            endif
            let k = k + 1
        endwhile

        " As the file and tag information is copied to the new index,
        " discard the previous information
        call s:Tlist_Discard_FileInfo(i)

        let i = i + 1
    endwhile

    " Reduce the number of files displayed
    let s:tlist_file_count = s:tlist_file_count - 1

    if g:Tlist_Show_One_File
        " If the tags for only one file is displayed and if we just
        " now removed that file, then invalidate the current file idx
        if s:tlist_cur_file_idx == fidx
            let s:tlist_cur_file_idx = -1
        endif
    endif
endfunction

" Tlist_Window_Goto_Window
" Goto the taglist window
function! s:Tlist_Window_Goto_Window()
    let winnum = bufwinnr(g:TagList_title)
    if winnum != -1
        if winnr() != winnum
            call s:Tlist_Exe_Cmd_No_Acmds(winnum . 'wincmd w')
        endif
    endif
endfunction

" Tlist_Window_Create
" Create a new taglist window. If it is already open, jump to it
function! s:Tlist_Window_Create()
    call s:Tlist_Log_Msg('Tlist_Window_Create()')
    " If the window is open, jump to it
    let winnum = bufwinnr(g:TagList_title)
    if winnum != -1
        " Jump to the existing window
        if winnr() != winnum
            exe winnum . 'wincmd w'
        endif
        return
    endif

    " If used with winmanager don't open windows. Winmanager will handle
    " the window/buffer management
    if s:tlist_app_name == "winmanager"
        return
    endif

    " Create a new window. If user prefers a horizontal window, then open
    " a horizontally split window. Otherwise open a vertically split
    " window
    if g:Tlist_Use_Horiz_Window
        " Open a horizontally split window
        let win_dir = 'botright'
        " Horizontal window height
        let win_size = g:Tlist_WinHeight
    else
        if s:tlist_winsize_chgd == -1
            " Open a vertically split window. Increase the window size, if
            " needed, to accomodate the new window
            if g:Tlist_Inc_Winwidth &&
                        \ &columns < (80 + g:Tlist_WinWidth)
                " Save the original window position
                let s:tlist_pre_winx = getwinposx()
                let s:tlist_pre_winy = getwinposy()

                " one extra column is needed to include the vertical split
                let &columns= &columns + g:Tlist_WinWidth + 1

                let s:tlist_winsize_chgd = 1
            else
                let s:tlist_winsize_chgd = 0
            endif
        endif

        if g:Tlist_Use_Right_Window
            " Open the window at the rightmost place
            let win_dir = 'botright vertical'
        else
            " Open the window at the leftmost place
            let win_dir = 'topleft vertical'
        endif
        let win_size = g:Tlist_WinWidth
    endif

    " If the tag listing temporary buffer already exists, then reuse it.
    " Otherwise create a new buffer
    let bufnum = bufnr(g:TagList_title)
    if bufnum == -1
        " Create a new buffer
        let wcmd = g:TagList_title
    else
        " Edit the existing buffer
        let wcmd = '+buffer' . bufnum
    endif

    " Create the taglist window
    " Preserve the alternate file
    let cmd_mod = (v:version >= 700) ? 'keepalt ' : ''
    exe 'silent! ' . cmd_mod . win_dir . ' ' . win_size . 'split ' . wcmd

    " Save the new window position
    let s:tlist_winx = getwinposx()
    let s:tlist_winy = getwinposy()

    " Initialize the taglist window
    call s:Tlist_Window_Init()
endfunction

" Tlist_Window_Zoom
" Zoom (maximize/minimize) the taglist window
function! s:Tlist_Window_Zoom()
    if s:tlist_win_maximized
        " Restore the window back to the previous size
        if g:Tlist_Use_Horiz_Window
            exe 'resize ' . g:Tlist_WinHeight
        else
            exe 'vert resize ' . g:Tlist_WinWidth
        endif
        let s:tlist_win_maximized = 0
    else
        " Set the window size to the maximum possible without closing other
        " windows
        if g:Tlist_Use_Horiz_Window
            resize
        else
            vert resize
        endif
        let s:tlist_win_maximized = 1
    endif
endfunction

" Tlist_Ballon_Expr
" When the mouse cursor is over a tag in the taglist window, display the
" tag prototype (balloon)
function! Tlist_Ballon_Expr()
    " Get the file index
    let fidx = s:Tlist_Window_Get_File_Index_By_Linenum(v:beval_lnum)
    if fidx == -1
        return ''
    endif

    " Get the tag output line for the current tag
    let tidx = s:Tlist_Window_Get_Tag_Index(fidx, v:beval_lnum)
    if tidx == 0
        return ''
    endif

    " Get the tag search pattern and display it
    return s:Tlist_Get_Tag_Prototype(fidx, tidx)
endfunction

" Tlist_Window_Check_Width
" Check the width of the taglist window. For horizontally split windows, the
" 'winfixheight' option is used to fix the height of the window. For
" vertically split windows, Vim doesn't support the 'winfixwidth' option. So
" need to handle window width changes from this function.
function! s:Tlist_Window_Check_Width()
    let tlist_winnr = bufwinnr(g:TagList_title)
    if tlist_winnr == -1
        return
    endif

    let width = winwidth(tlist_winnr)
    if width != g:Tlist_WinWidth
        call s:Tlist_Log_Msg("Tlist_Window_Check_Width: Changing window " .
                    \ "width from " . width . " to " . g:Tlist_WinWidth)
        let save_winnr = winnr()
        if save_winnr != tlist_winnr
            call s:Tlist_Exe_Cmd_No_Acmds(tlist_winnr . 'wincmd w')
        endif
        exe 'vert resize ' . g:Tlist_WinWidth
        if save_winnr != tlist_winnr
            call s:Tlist_Exe_Cmd_No_Acmds('wincmd p')
        endif
    endif
endfunction

" Tlist_Window_Exit_Only_Window
" If the 'Tlist_Exit_OnlyWindow' option is set, then exit Vim if only the
" taglist window is present.
function! s:Tlist_Window_Exit_Only_Window()
    " Before quitting Vim, delete the taglist buffer so that
    " the '0 mark is correctly set to the previous buffer.
    if v:version < 700
	if winbufnr(2) == -1
            bdelete
	    quit
	endif
    else
	if winbufnr(2) == -1
	    if tabpagenr('$') == 1
		" Only one tag page is present
                "
                " When deleting the taglist buffer, autocommands cannot be
                " disabled. If autocommands are disabled, then on exiting Vim,
                " the window size will not be restored back to the original
                " size.
                bdelete
		quit
	    else
		" More than one tab page is present. Close only the current
		" tab page
                close
	    endif
	endif
    endif
endfunction

" Tlist_Window_Init
" Set the default options for the taglist window
function! s:Tlist_Window_Init()
    call s:Tlist_Log_Msg('Tlist_Window_Init()')

    " The 'readonly' option should not be set for the taglist buffer.
    " If Vim is started as "view/gview" or if the ":view" command is
    " used, then the 'readonly' option is set for all the buffers.
    " Unset it for the taglist buffer
    setlocal noreadonly

    " Set the taglist buffer filetype to taglist
    setlocal filetype=taglist

    " Define taglist window element highlighting
    syntax match TagListComment '^" .*'
    syntax match TagListFileName '^[^" ].*$'
    syntax match TagListTitle '^  \S.*$'
    syntax match TagListTagScope  '\s\[.\{-\}\]$'

    " Define the highlighting only if colors are supported
    if has('gui_running') || &t_Co > 2
        " Colors to highlight various taglist window elements
        " If user defined highlighting group exists, then use them.
        " Otherwise, use default highlight groups.
        if hlexists('MyTagListTagName')
            highlight link TagListTagName MyTagListTagName
        else
            highlight default link TagListTagName Search
        endif
        " Colors to highlight comments and titles
        if hlexists('MyTagListComment')
            highlight link TagListComment MyTagListComment
        else
            highlight clear TagListComment
            highlight default link TagListComment Comment
        endif
        if hlexists('MyTagListTitle')
            highlight link TagListTitle MyTagListTitle
        else
            highlight clear TagListTitle
            highlight default link TagListTitle Title
        endif
        if hlexists('MyTagListFileName')
            highlight link TagListFileName MyTagListFileName
        else
            highlight clear TagListFileName
            highlight default TagListFileName guibg=Grey ctermbg=darkgray
                        \ guifg=white ctermfg=white
        endif
        if hlexists('MyTagListTagScope')
            highlight link TagListTagScope MyTagListTagScope
        else
            highlight clear TagListTagScope
            highlight default link TagListTagScope Identifier
        endif
    else
        highlight default TagListTagName term=reverse cterm=reverse
    endif

    " Folding related settings
    setlocal foldenable
    setlocal foldminlines=0
    setlocal foldmethod=manual
    setlocal foldlevel=9999
    if g:Tlist_Enable_Fold_Column
        setlocal foldcolumn=3
    else
        setlocal foldcolumn=0
    endif
    setlocal foldtext=v:folddashes.getline(v:foldstart)

    if s:tlist_app_name != "winmanager"
        " Mark buffer as scratch
        silent! setlocal buftype=nofile
        if s:tlist_app_name == "none"
            silent! setlocal bufhidden=delete
        endif
        silent! setlocal noswapfile
        " Due to a bug in Vim 6.0, the winbufnr() function fails for unlisted
        " buffers. So if the taglist buffer is unlisted, multiple taglist
        " windows will be opened. This bug is fixed in Vim 6.1 and above
        if v:version >= 601
            silent! setlocal nobuflisted
        endif
    endif

    silent! setlocal nowrap

    " If the 'number' option is set in the source window, it will affect the
    " taglist window. So forcefully disable 'number' option for the taglist
    " window
    silent! setlocal nonumber
    if exists('&relativenumber')
        silent! setlocal norelativenumber
    endif

    " Use fixed height when horizontally split window is used
    if g:Tlist_Use_Horiz_Window
        if v:version >= 602
            set winfixheight
        endif
    endif
    if !g:Tlist_Use_Horiz_Window && v:version >= 700
        set winfixwidth
    endif

    " Setup balloon evaluation to display tag prototype
    if v:version >= 700 && has('balloon_eval')
        setlocal balloonexpr=Tlist_Ballon_Expr()
        set ballooneval
    endif

    " Setup the cpoptions properly for the maps to work
    let old_cpoptions = &cpoptions
    set cpoptions&vim

    " Create buffer local mappings for jumping to the tags and sorting the list
    nnoremap <buffer> <silent> <CR>
                \ :call <SID>Tlist_Window_Jump_To_Tag('useopen')<CR>
    nnoremap <buffer> <silent> o
                \ :call <SID>Tlist_Window_Jump_To_Tag('newwin')<CR>
    nnoremap <buffer> <silent> p
                \ :call <SID>Tlist_Window_Jump_To_Tag('preview')<CR>
    nnoremap <buffer> <silent> P
                \ :call <SID>Tlist_Window_Jump_To_Tag('prevwin')<CR>
    if v:version >= 700
    nnoremap <buffer> <silent> t
                \ :call <SID>Tlist_Window_Jump_To_Tag('checktab')<CR>
    nnoremap <buffer> <silent> <C-t>
                \ :call <SID>Tlist_Window_Jump_To_Tag('newtab')<CR>
    endif
    nnoremap <buffer> <silent> <2-LeftMouse>
                \ :call <SID>Tlist_Window_Jump_To_Tag('useopen')<CR>
    nnoremap <buffer> <silent> s
                \ :call <SID>Tlist_Change_Sort('cmd', 'toggle', '')<CR>
    nnoremap <buffer> <silent> + :silent! foldopen<CR>
    nnoremap <buffer> <silent> - :silent! foldclose<CR>
    nnoremap <buffer> <silent> * :silent! %foldopen!<CR>
    nnoremap <buffer> <silent> = :silent! %foldclose<CR>
    nnoremap <buffer> <silent> <kPlus> :silent! foldopen<CR>
    nnoremap <buffer> <silent> <kMinus> :silent! foldclose<CR>
    nnoremap <buffer> <silent> <kMultiply> :silent! %foldopen!<CR>
    nnoremap <buffer> <silent> <Space> :call <SID>Tlist_Window_Show_Info()<CR>
    nnoremap <buffer> <silent> u :call <SID>Tlist_Window_Update_File()<CR>
    nnoremap <buffer> <silent> d :call <SID>Tlist_Remove_File(-1, 1)<CR>
    nnoremap <buffer> <silent> x :call <SID>Tlist_Window_Zoom()<CR>
    nnoremap <buffer> <silent> [[ :call <SID>Tlist_Window_Move_To_File(-1)<CR>
    nnoremap <buffer> <silent> <BS> :call <SID>Tlist_Window_Move_To_File(-1)<CR>
    nnoremap <buffer> <silent> ]] :call <SID>Tlist_Window_Move_To_File(1)<CR>
    nnoremap <buffer> <silent> <Tab> :call <SID>Tlist_Window_Move_To_File(1)<CR>
    nnoremap <buffer> <silent> <F1> :call <SID>Tlist_Window_Toggle_Help_Text()<CR>
    nnoremap <buffer> <silent> q :close<CR>

    " Insert mode mappings
    inoremap <buffer> <silent> <CR>
                \ <C-o>:call <SID>Tlist_Window_Jump_To_Tag('useopen')<CR>
    " Windows needs return
    inoremap <buffer> <silent> <Return>
                \ <C-o>:call <SID>Tlist_Window_Jump_To_Tag('useopen')<CR>
    inoremap <buffer> <silent> o
                \ <C-o>:call <SID>Tlist_Window_Jump_To_Tag('newwin')<CR>
    inoremap <buffer> <silent> p
                \ <C-o>:call <SID>Tlist_Window_Jump_To_Tag('preview')<CR>
    inoremap <buffer> <silent> P
                \ <C-o>:call <SID>Tlist_Window_Jump_To_Tag('prevwin')<CR>
    if v:version >= 700
    inoremap <buffer> <silent> t
                \ <C-o>:call <SID>Tlist_Window_Jump_To_Tag('checktab')<CR>
    inoremap <buffer> <silent> <C-t>
                \ <C-o>:call <SID>Tlist_Window_Jump_To_Tag('newtab')<CR>
    endif
    inoremap <buffer> <silent> <2-LeftMouse>
                \ <C-o>:call <SID>Tlist_Window_Jump_To_Tag('useopen')<CR>
    inoremap <buffer> <silent> s
                \ <C-o>:call <SID>Tlist_Change_Sort('cmd', 'toggle', '')<CR>
    inoremap <buffer> <silent> +             <C-o>:silent! foldopen<CR>
    inoremap <buffer> <silent> -             <C-o>:silent! foldclose<CR>
    inoremap <buffer> <silent> *             <C-o>:silent! %foldopen!<CR>
    inoremap <buffer> <silent> =             <C-o>:silent! %foldclose<CR>
    inoremap <buffer> <silent> <kPlus>       <C-o>:silent! foldopen<CR>
    inoremap <buffer> <silent> <kMinus>      <C-o>:silent! foldclose<CR>
    inoremap <buffer> <silent> <kMultiply>   <C-o>:silent! %foldopen!<CR>
    inoremap <buffer> <silent> <Space>       <C-o>:call
                                    \ <SID>Tlist_Window_Show_Info()<CR>
    inoremap <buffer> <silent> u
                            \ <C-o>:call <SID>Tlist_Window_Update_File()<CR>
    inoremap <buffer> <silent> d    <C-o>:call <SID>Tlist_Remove_File(-1, 1)<CR>
    inoremap <buffer> <silent> x    <C-o>:call <SID>Tlist_Window_Zoom()<CR>
    inoremap <buffer> <silent> [[   <C-o>:call <SID>Tlist_Window_Move_To_File(-1)<CR>
    inoremap <buffer> <silent> <BS> <C-o>:call <SID>Tlist_Window_Move_To_File(-1)<CR>
    inoremap <buffer> <silent> ]]   <C-o>:call <SID>Tlist_Window_Move_To_File(1)<CR>
    inoremap <buffer> <silent> <Tab> <C-o>:call <SID>Tlist_Window_Move_To_File(1)<CR>
    inoremap <buffer> <silent> <F1>  <C-o>:call <SID>Tlist_Window_Toggle_Help_Text()<CR>
    inoremap <buffer> <silent> q    <C-o>:close<CR>

    " Map single left mouse click if the user wants this functionality
    if g:Tlist_Use_SingleClick == 1
        " Contributed by Bindu Wavell
        " attempt to perform single click mapping, it would be much
        " nicer if we could nnoremap <buffer> ... however vim does
        " not fire the <buffer> <leftmouse> when you use the mouse
        " to enter a buffer.
        let clickmap = ':if bufname("%") =~ "__Tag_List__" <bar> ' .
                    \ 'call <SID>Tlist_Window_Jump_To_Tag("useopen") ' .
                    \ '<bar> endif <CR>'
        if maparg('<leftmouse>', 'n') == ''
            " no mapping for leftmouse
            exe ':nnoremap <silent> <leftmouse> <leftmouse>' . clickmap
        else
            " we have a mapping
            let mapcmd = ':nnoremap <silent> <leftmouse> <leftmouse>'
            let mapcmd = mapcmd . substitute(substitute(
                        \ maparg('<leftmouse>', 'n'), '|', '<bar>', 'g'),
                        \ '\c^<leftmouse>', '', '')
            let mapcmd = mapcmd . clickmap
            exe mapcmd
        endif
    endif

    " Define the taglist autocommands
    augroup TagListAutoCmds
        autocmd!
        " Display the tag prototype for the tag under the cursor.
        autocmd CursorHold __Tag_List__ call s:Tlist_Window_Show_Info()
        " Highlight the current tag periodically
        autocmd CursorHold * silent call s:Tlist_Window_Highlight_Tag(
                            \ fnamemodify(bufname('%'), ':p'), line('.'), 1, 0)

        " Adjust the Vim window width when taglist window is closed
        autocmd BufUnload __Tag_List__ call s:Tlist_Post_Close_Cleanup()
        " Close the fold for this buffer when leaving the buffer
        if g:Tlist_File_Fold_Auto_Close
            autocmd BufEnter * silent
                \ call s:Tlist_Window_Open_File_Fold(expand('<abuf>'))
        endif
        " Exit Vim itself if only the taglist window is present (optional)
        if g:Tlist_Exit_OnlyWindow
	    autocmd BufEnter __Tag_List__ nested
			\ call s:Tlist_Window_Exit_Only_Window()
        endif
        if s:tlist_app_name != "winmanager" &&
                    \ !g:Tlist_Process_File_Always &&
                    \ (!has('gui_running') || !g:Tlist_Show_Menu)
            " Auto refresh the taglist window
            autocmd BufEnter * call s:Tlist_Refresh()
        endif

        if !g:Tlist_Use_Horiz_Window
            if v:version < 700
                autocmd WinEnter * call s:Tlist_Window_Check_Width()
            endif
        endif
        if v:version >= 700
            autocmd TabEnter * silent call s:Tlist_Refresh_Folds()
        endif
    augroup end

    " Restore the previous cpoptions settings
    let &cpoptions = old_cpoptions
endfunction

" Tlist_Window_Refresh
" Display the tags for all the files in the taglist window
function! s:Tlist_Window_Refresh()
    call s:Tlist_Log_Msg('Tlist_Window_Refresh()')
    " Set report option to a huge value to prevent informational messages
    " while deleting the lines
    let old_report = &report
    set report=99999

    " Mark the buffer as modifiable
    setlocal modifiable

    " Delete the contents of the buffer to the black-hole register
    silent! %delete _

    " As we have cleared the taglist window, mark all the files
    " as not visible
    let i = 0
    while i < s:tlist_file_count
        let s:tlist_{i}_visible = 0
        let i = i + 1
    endwhile

    if g:Tlist_Compact_Format == 0
        " Display help in non-compact mode
        call s:Tlist_Window_Display_Help()
    endif

    " Mark the buffer as not modifiable
    setlocal nomodifiable

    " Restore the report option
    let &report = old_report

    " If the tags for only one file should be displayed in the taglist
    " window, then no need to add the tags here. The bufenter autocommand
    " will add the tags for that file.
    if g:Tlist_Show_One_File
        return
    endif

    " List all the tags for the previously processed files
    " Do this only if taglist is configured to display tags for more than
    " one file. Otherwise, when Tlist_Show_One_File is configured,
    " tags for the wrong file will be displayed.
    let i = 0
    while i < s:tlist_file_count
        call s:Tlist_Window_Refresh_File(s:tlist_{i}_filename,
                    \ s:tlist_{i}_filetype)
        let i = i + 1
    endwhile

    if g:Tlist_Auto_Update
        " Add and list the tags for all buffers in the Vim buffer list
        let i = 1
        let last_bufnum = bufnr('$')
        while i <= last_bufnum
            if buflisted(i)
                let fname = fnamemodify(bufname(i), ':p')
                let ftype = s:Tlist_Get_Buffer_Filetype(i)
                " If the file doesn't support tag listing, skip it
                if !s:Tlist_Skip_File(fname, ftype)
                    call s:Tlist_Window_Refresh_File(fname, ftype)
                endif
            endif
            let i = i + 1
        endwhile
    endif

    " If Tlist_File_Fold_Auto_Close option is set, then close all the folds
    if g:Tlist_File_Fold_Auto_Close
        " Close all the folds
        silent! %foldclose
    endif

    " Move the cursor to the top of the taglist window
    normal! gg
endfunction

" Tlist_Post_Close_Cleanup()
" Close the taglist window and adjust the Vim window width
function! s:Tlist_Post_Close_Cleanup()
    call s:Tlist_Log_Msg('Tlist_Post_Close_Cleanup()')
    " Mark all the files as not visible
    let i = 0
    while i < s:tlist_file_count
        let s:tlist_{i}_visible = 0
        let i = i + 1
    endwhile

    " Remove the taglist autocommands
    silent! autocmd! TagListAutoCmds

    " Clear all the highlights
    match none

    silent! syntax clear TagListTitle
    silent! syntax clear TagListComment
    silent! syntax clear TagListTagScope

    " Remove the left mouse click mapping if it was setup initially
    if g:Tlist_Use_SingleClick
        if hasmapto('<LeftMouse>')
            nunmap <LeftMouse>
        endif
    endif

    if s:tlist_app_name != "winmanager"
    if g:Tlist_Use_Horiz_Window || g:Tlist_Inc_Winwidth == 0 ||
                \ s:tlist_winsize_chgd != 1 ||
                \ &columns < (80 + g:Tlist_WinWidth)
        " No need to adjust window width if using horizontally split taglist
        " window or if columns is less than 101 or if the user chose not to
        " adjust the window width
    else
        " If the user didn't manually move the window, then restore the window
        " position to the pre-taglist position
        if s:tlist_pre_winx != -1 && s:tlist_pre_winy != -1 &&
                    \ getwinposx() == s:tlist_winx &&
                    \ getwinposy() == s:tlist_winy
            exe 'winpos ' . s:tlist_pre_winx . ' ' . s:tlist_pre_winy
        endif

        " Adjust the Vim window width
        let &columns= &columns - (g:Tlist_WinWidth + 1)
    endif
    endif

    let s:tlist_winsize_chgd = -1

    " Reset taglist state variables
    if s:tlist_app_name == "winmanager"
        let s:tlist_app_name = "none"
    endif
    let s:tlist_window_initialized = 0
endfunction

" Tlist_Window_Refresh_File()
" List the tags defined in the specified file in a Vim window
function! s:Tlist_Window_Refresh_File(filename, ftype)
    call s:Tlist_Log_Msg('Tlist_Window_Refresh_File (' . a:filename . ')')
    " First check whether the file already exists
    let fidx = s:Tlist_Get_File_Index(a:filename)
    if fidx != -1
        let file_listed = 1
    else
        let file_listed = 0
    endif

    if !file_listed
        " Check whether this file is removed based on user request
        " If it is, then don't display the tags for this file
        if s:Tlist_User_Removed_File(a:filename)
            return
        endif
    endif

    if file_listed && s:tlist_{fidx}_visible
        " Check whether the file tags are currently valid
        if s:tlist_{fidx}_valid
            " Goto the first line in the file
            exe s:tlist_{fidx}_start

            " If the line is inside a fold, open the fold
            if foldclosed('.') != -1
                exe "silent! " . s:tlist_{fidx}_start . "," .
                            \ s:tlist_{fidx}_end . "foldopen!"
            endif
            return
        endif

        " Discard and remove the tags for this file from display
        call s:Tlist_Discard_TagInfo(fidx)
        call s:Tlist_Window_Remove_File_From_Display(fidx)
    endif

    " Process and generate a list of tags defined in the file
    if !file_listed || !s:tlist_{fidx}_valid
        let ret_fidx = s:Tlist_Process_File(a:filename, a:ftype)
        if ret_fidx == -1
            return
        endif
        let fidx = ret_fidx
    endif

    " Set report option to a huge value to prevent informational messages
    " while adding lines to the taglist window
    let old_report = &report
    set report=99999

    if g:Tlist_Show_One_File
        " Remove the previous file
        if s:tlist_cur_file_idx != -1
            call s:Tlist_Window_Remove_File_From_Display(s:tlist_cur_file_idx)
            let s:tlist_{s:tlist_cur_file_idx}_visible = 0
            let s:tlist_{s:tlist_cur_file_idx}_start = 0
            let s:tlist_{s:tlist_cur_file_idx}_end = 0
        endif
        let s:tlist_cur_file_idx = fidx
    endif

    " Mark the buffer as modifiable
    setlocal modifiable

    " Add new files to the end of the window. For existing files, add them at
    " the same line where they were previously present. If the file is not
    " visible, then add it at the end
    if s:tlist_{fidx}_start == 0 || !s:tlist_{fidx}_visible
        if g:Tlist_Compact_Format
            let s:tlist_{fidx}_start = line('$')
        else
            let s:tlist_{fidx}_start = line('$') + 1
        endif
    endif

    let s:tlist_{fidx}_visible = 1

    " Goto the line where this file should be placed
    if g:Tlist_Compact_Format
        exe s:tlist_{fidx}_start
    else
        exe s:tlist_{fidx}_start - 1
    endif

    let txt = fnamemodify(s:tlist_{fidx}_filename, ':t') . ' (' .
                \ fnamemodify(s:tlist_{fidx}_filename, ':p:h') . ')'
    if g:Tlist_Compact_Format == 0
        silent! put =txt
    else
        silent! put! =txt
        " Move to the next line
        exe line('.') + 1
    endif
    let file_start = s:tlist_{fidx}_start

    " Add the tag names grouped by tag type to the buffer with a title
    let i = 1
    let ttype_cnt = s:tlist_{a:ftype}_count
    while i <= ttype_cnt
        let ttype = s:tlist_{a:ftype}_{i}_name
        " Add the tag type only if there are tags for that type
        let fidx_ttype = 's:tlist_' . fidx . '_' . ttype
        let ttype_txt = {fidx_ttype}
        if ttype_txt != ''
            let txt = '  ' . s:tlist_{a:ftype}_{i}_fullname
            if g:Tlist_Compact_Format == 0
                let ttype_start_lnum = line('.') + 1
                silent! put =txt
            else
                let ttype_start_lnum = line('.')
                silent! put! =txt
            endif
            silent! put =ttype_txt

            let {fidx_ttype}_offset = ttype_start_lnum - file_start

            " Adjust the cursor position
            if g:Tlist_Compact_Format == 0
                exe ttype_start_lnum + {fidx_ttype}_count
            else
                exe ttype_start_lnum + {fidx_ttype}_count + 1
            endif

            if g:Tlist_Compact_Format == 0
                " Separate the tag types by a empty line
                silent! put =''
            endif
        endif
        let i = i + 1
    endwhile

    if s:tlist_{fidx}_tag_count == 0
        if g:Tlist_Compact_Format == 0
            silent! put =''
        endif
    endif

    let s:tlist_{fidx}_end = line('.') - 1

    call s:Tlist_Create_Folds_For_File(fidx)

    " Goto the starting line for this file,
    exe s:tlist_{fidx}_start

    if s:tlist_app_name == "winmanager"
        " To handle a bug in the winmanager plugin, add a space at the
        " last line
        call setline('$', ' ')
    endif

    " Mark the buffer as not modifiable
    setlocal nomodifiable

    " Restore the report option
    let &report = old_report

    " Update the start and end line numbers for all the files following this
    " file
    let start = s:tlist_{fidx}_start
    " include the empty line after the last line
    if g:Tlist_Compact_Format
        let end = s:tlist_{fidx}_end
    else
        let end = s:tlist_{fidx}_end + 1
    endif
    call s:Tlist_Window_Update_Line_Offsets(fidx + 1, 1, end - start + 1)

    " Now that we have updated the taglist window, update the tags
    " menu (if present)
    if g:Tlist_Show_Menu
        call s:Tlist_Menu_Update_File(1)
    endif
endfunction

" Tlist_Init_File
" Initialize the variables for a new file
function! s:Tlist_Init_File(filename, ftype)
    call s:Tlist_Log_Msg('Tlist_Init_File (' . a:filename . ')')
    " Add new files at the end of the list
    let fidx = s:tlist_file_count
    let s:tlist_file_count = s:tlist_file_count + 1
    " Add the new file name to the taglist list of file names
    let s:tlist_file_names = s:tlist_file_names . a:filename . "\n"

    " Initialize the file variables
    let s:tlist_{fidx}_filename = a:filename
    let s:tlist_{fidx}_sort_type = g:Tlist_Sort_Type
    let s:tlist_{fidx}_filetype = a:ftype
    let s:tlist_{fidx}_mtime = -1
    let s:tlist_{fidx}_start = 0
    let s:tlist_{fidx}_end = 0
    let s:tlist_{fidx}_valid = 0
    let s:tlist_{fidx}_visible = 0
    let s:tlist_{fidx}_tag_count = 0
    let s:tlist_{fidx}_menu_cmd = ''

    " Initialize the tag type variables
    let i = 1
    while i <= s:tlist_{a:ftype}_count
        let ttype = s:tlist_{a:ftype}_{i}_name
        let s:tlist_{fidx}_{ttype} = ''
        let s:tlist_{fidx}_{ttype}_offset = 0
        let s:tlist_{fidx}_{ttype}_count = 0
        let i = i + 1
    endwhile

    return fidx
endfunction

" Tlist_Get_Tag_Type_By_Tag
" Return the tag type for the specified tag index
function! s:Tlist_Get_Tag_Type_By_Tag(fidx, tidx)
    let ttype_var = 's:tlist_' . a:fidx . '_' . a:tidx . '_tag_type'

    " Already parsed and have the tag name
    if exists(ttype_var)
        return {ttype_var}
    endif

    let tag_line = s:tlist_{a:fidx}_{a:tidx}_tag
    let {ttype_var} = s:Tlist_Extract_Tagtype(tag_line)

    return {ttype_var}
endfunction

" Tlist_Get_Tag_Prototype
function! s:Tlist_Get_Tag_Prototype(fidx, tidx)
    let tproto_var = 's:tlist_' . a:fidx . '_' . a:tidx . '_tag_proto'

    " Already parsed and have the tag prototype
    if exists(tproto_var)
        return {tproto_var}
    endif

    " Parse and extract the tag prototype
    let tag_line = s:tlist_{a:fidx}_{a:tidx}_tag
    let start = stridx(tag_line, '/^') + 2
    let end = stridx(tag_line, '/;"' . "\t")
    if tag_line[end - 1] == '$'
        let end = end -1
    endif
    let tag_proto = strpart(tag_line, start, end - start)
    let {tproto_var} = substitute(tag_proto, '\s*', '', '')

    return {tproto_var}
endfunction

" Tlist_Get_Tag_Scope
" Get the scope (e.g. C++ class) of a tag
"
" Tag scope is the last field after the 'line:<num>\t' field
function! s:Tlist_Get_Tag_Scope(fidx, tidx)
    let tscope_var = 's:tlist_' . a:fidx . '_' . a:tidx . '_tag_scope'

    " Already parsed and have the tag scope
    if exists(tscope_var)
        return {tscope_var}
    endif

    " Parse and extract the tag scope
    let tag_line = s:tlist_{a:fidx}_{a:tidx}_tag
    let {tscope_var} = s:Tlist_Extract_Tag_Scope(tag_line)

    return {tscope_var}
endfunction

" Tlist_Get_Tag_SearchPat
function! s:Tlist_Get_Tag_SearchPat(fidx, tidx)
    let tpat_var = 's:tlist_' . a:fidx . '_' . a:tidx . '_tag_searchpat'

    " Already parsed and have the tag search pattern
    if exists(tpat_var)
        return {tpat_var}
    endif

    " Parse and extract the tag search pattern
    let tag_line = s:tlist_{a:fidx}_{a:tidx}_tag
    let start = stridx(tag_line, '/^') + 2
    let end = stridx(tag_line, '/;"' . "\t")
    if tag_line[end - 1] == '$'
        let end = end -1
    endif
    let {tpat_var} = '\V\^' . strpart(tag_line, start, end - start) .
                        \ (tag_line[end] == '$' ? '\$' : '')

    return {tpat_var}
endfunction

" Tlist_Get_Tag_Linenum
" Return the tag line number, given the tag index
function! s:Tlist_Get_Tag_Linenum(fidx, tidx)
    let tline_var = 's:tlist_' . a:fidx . '_' . a:tidx . '_tag_linenum'

    " Already parsed and have the tag line number
    if exists(tline_var)
        return {tline_var}
    endif

    " Parse and extract the tag line number
    let tag_line = s:tlist_{a:fidx}_{a:tidx}_tag
    let start = strridx(tag_line, 'line:') + 5
    let end = strridx(tag_line, "\t")
    if end < start
        let {tline_var} = strpart(tag_line, start) + 0
    else
        let {tline_var} = strpart(tag_line, start, end - start) + 0
    endif

    return {tline_var}
endfunction

" Tlist_Parse_Tagline
" Parse a tag line from the ctags output. Separate the tag output based on the
" tag type and store it in the tag type variable.
" The format of each line in the ctags output is:
"
"     tag_name<TAB>file_name<TAB>ex_cmd;"<TAB>extension_fields
"
function! s:Tlist_Parse_Tagline(tag_line)
    if a:tag_line == ''
        " Skip empty lines
        return
    endif

    " Extract the tag type
    let ttype = s:Tlist_Extract_Tagtype(a:tag_line)

    " Make sure the tag type is a valid and supported one
    if ttype == '' || stridx(s:ctags_flags, ttype) == -1
        " Line is not in proper tags format or Tag type is not supported
        return
    endif

    " Update the total tag count
    let s:tidx = s:tidx + 1

    " The following variables are used to optimize this code.  Vim is slow in
    " using curly brace names. To reduce the amount of processing needed, the
    " curly brace variables are pre-processed here
    let fidx_tidx = 's:tlist_' . s:fidx . '_' . s:tidx
    let fidx_ttype = 's:tlist_' . s:fidx . '_' . ttype

    " Update the count of this tag type
    let ttype_idx = {fidx_ttype}_count + 1
    let {fidx_ttype}_count = ttype_idx

    " Store the ctags output for this tag
    let {fidx_tidx}_tag = a:tag_line

    " Store the tag index and the tag type index (back pointers)
    let {fidx_ttype}_{ttype_idx} = s:tidx
    let {fidx_tidx}_ttype_idx = ttype_idx

    " Extract the tag name
    let tag_name = strpart(a:tag_line, 0, stridx(a:tag_line, "\t"))

    " Extract the tag scope/prototype
    if g:Tlist_Display_Prototype
        let ttxt = '    ' . s:Tlist_Get_Tag_Prototype(s:fidx, s:tidx)
    else
        let ttxt = '    ' . tag_name

        " Add the tag scope, if it is available and is configured. Tag
        " scope is the last field after the 'line:<num>\t' field
        if g:Tlist_Display_Tag_Scope
            let tag_scope = s:Tlist_Get_Tag_Scope(s:fidx, s:tidx)
            if tag_scope != ''
                let ttxt = ttxt . ' [' . tag_scope . ']'
            endif
        endif
    endif

    " Add this tag to the tag type variable
    let {fidx_ttype} = {fidx_ttype} . ttxt . "\n"

    " Save the tag name
    let {fidx_tidx}_tag_name = tag_name
endfunction

" Tlist_Process_File
" Get the list of tags defined in the specified file and store them
" in Vim variables. Returns the file index where the tags are stored.
function! s:Tlist_Process_File(filename, ftype)
    call s:Tlist_Log_Msg('Tlist_Process_File (' . a:filename . ', ' .
                \ a:ftype . ')')
    " Check whether this file is supported
    if s:Tlist_Skip_File(a:filename, a:ftype)
        return -1
    endif

    " If the tag types for this filetype are not yet created, then create
    " them now
    let var = 's:tlist_' . a:ftype . '_count'
    if !exists(var)
        if s:Tlist_FileType_Init(a:ftype) == 0
            return -1
        endif
    endif

    " If this file is already processed, then use the cached values
    let fidx = s:Tlist_Get_File_Index(a:filename)
    if fidx == -1
        " First time, this file is loaded
        let fidx = s:Tlist_Init_File(a:filename, a:ftype)
    else
        " File was previously processed. Discard the tag information
        call s:Tlist_Discard_TagInfo(fidx)
    endif

    let s:tlist_{fidx}_valid = 1

    " Exuberant ctags arguments to generate a tag list
    let ctags_args = ' -f - --format=2 --excmd=pattern --fields=nks '

    " Form the ctags argument depending on the sort type
    if s:tlist_{fidx}_sort_type == 'name'
        let ctags_args = ctags_args . '--sort=yes'
    else
        let ctags_args = ctags_args . '--sort=no'
    endif

    " Add the filetype specific arguments
    let ctags_args = ctags_args . ' ' . s:tlist_{a:ftype}_ctags_args

    " Ctags command to produce output with regexp for locating the tags
    let ctags_cmd = g:Tlist_Ctags_Cmd . ctags_args
    let ctags_cmd = ctags_cmd . ' "' . a:filename . '"'

    if &shellxquote == '"'
        " Double-quotes within double-quotes will not work in the
        " command-line.If the 'shellxquote' option is set to double-quotes,
        " then escape the double-quotes in the ctags command-line.
        let ctags_cmd = escape(ctags_cmd, '"')
    endif

    " In Windows 95, if not using cygwin, disable the 'shellslash'
    " option. Otherwise, this will cause problems when running the
    " ctags command.
    if has('win95') && !has('win32unix')
        let old_shellslash = &shellslash
        set noshellslash
    endif

    if has('win32') && !has('win32unix') && !has('win95')
                \ && (&shell =~ 'cmd.exe')
        " Windows does not correctly deal with commands that have more than 1
        " set of double quotes.  It will strip them all resulting in:
        " 'C:\Program' is not recognized as an internal or external command
        " operable program or batch file.  To work around this, place the
        " command inside a batch file and call the batch file.
        " Do this only on Win2K, WinXP and above.
        " Contributed by: David Fishburn.
        let s:taglist_tempfile = fnamemodify(tempname(), ':h') .
                    \ '\taglist.cmd'
        if v:version >= 700
            call writefile([ctags_cmd], s:taglist_tempfile, "b")
        else
            exe 'redir! > ' . s:taglist_tempfile
            silent echo ctags_cmd
            redir END
        endif

        call s:Tlist_Log_Msg('Cmd inside batch file: ' . ctags_cmd)
        let ctags_cmd = '"' . s:taglist_tempfile . '"'
    endif

    call s:Tlist_Log_Msg('Cmd: ' . ctags_cmd)

    " Run ctags and get the tag list
    let cmd_output = system(ctags_cmd)

    " Restore the value of the 'shellslash' option.
    if has('win95') && !has('win32unix')
        let &shellslash = old_shellslash
    endif

    if exists('s:taglist_tempfile')
        " Delete the temporary cmd file created on MS-Windows
        call delete(s:taglist_tempfile)
    endif

    " Handle errors
    if v:shell_error
        let msg = "Taglist: Failed to generate tags for " . a:filename
        call s:Tlist_Warning_Msg(msg)
        if cmd_output != ''
            call s:Tlist_Warning_Msg(cmd_output)
        endif
        return fidx
    endif

    " Store the modification time for the file
    let s:tlist_{fidx}_mtime = getftime(a:filename)

    " No tags for current file
    if cmd_output == ''
        call s:Tlist_Log_Msg('No tags defined in ' . a:filename)
        return fidx
    endif

    call s:Tlist_Log_Msg('Generated tags information for ' . a:filename)

    if v:version > 601
        " The following script local variables are used by the
        " Tlist_Parse_Tagline() function.
        let s:ctags_flags = s:tlist_{a:ftype}_ctags_flags
        let s:fidx = fidx
        let s:tidx = 0

        " Process the ctags output one line at a time.  The substitute()
        " command is used to parse the tag lines instead of using the
        " matchstr()/stridx()/strpart() functions for performance reason
        call substitute(cmd_output, "\\([^\n]\\+\\)\n",
                    \ '\=s:Tlist_Parse_Tagline(submatch(1))', 'g')

        " Save the number of tags for this file
        let s:tlist_{fidx}_tag_count = s:tidx

        " The following script local variables are no longer needed
        unlet! s:ctags_flags
        unlet! s:tidx
        unlet! s:fidx
    else
        " Due to a bug in Vim earlier than version 6.1,
        " we cannot use substitute() to parse the ctags output.
        " Instead the slow str*() functions are used
        let ctags_flags = s:tlist_{a:ftype}_ctags_flags
        let tidx = 0

        while cmd_output != ''
            " Extract one line at a time
            let idx = stridx(cmd_output, "\n")
            let one_line = strpart(cmd_output, 0, idx)
            " Remove the line from the tags output
            let cmd_output = strpart(cmd_output, idx + 1)

            if one_line == ''
                " Line is not in proper tags format
                continue
            endif

            " Extract the tag type
            let ttype = s:Tlist_Extract_Tagtype(one_line)

            " Make sure the tag type is a valid and supported one
            if ttype == '' || stridx(ctags_flags, ttype) == -1
                " Line is not in proper tags format or Tag type is not
                " supported
                continue
            endif

            " Update the total tag count
            let tidx = tidx + 1

            " The following variables are used to optimize this code.  Vim is
            " slow in using curly brace names. To reduce the amount of
            " processing needed, the curly brace variables are pre-processed
            " here
            let fidx_tidx = 's:tlist_' . fidx . '_' . tidx
            let fidx_ttype = 's:tlist_' . fidx . '_' . ttype

            " Update the count of this tag type
            let ttype_idx = {fidx_ttype}_count + 1
            let {fidx_ttype}_count = ttype_idx

            " Store the ctags output for this tag
            let {fidx_tidx}_tag = one_line

            " Store the tag index and the tag type index (back pointers)
            let {fidx_ttype}_{ttype_idx} = tidx
            let {fidx_tidx}_ttype_idx = ttype_idx

            " Extract the tag name
            let tag_name = strpart(one_line, 0, stridx(one_line, "\t"))

            " Extract the tag scope/prototype
            if g:Tlist_Display_Prototype
                let ttxt = '    ' . s:Tlist_Get_Tag_Prototype(fidx, tidx)
            else
                let ttxt = '    ' . tag_name

                " Add the tag scope, if it is available and is configured. Tag
                " scope is the last field after the 'line:<num>\t' field
                if g:Tlist_Display_Tag_Scope
                    let tag_scope = s:Tlist_Get_Tag_Scope(fidx, tidx)
                    if tag_scope != ''
                        let ttxt = ttxt . ' [' . tag_scope . ']'
                    endif
                endif
            endif

            " Add this tag to the tag type variable
            let {fidx_ttype} = {fidx_ttype} . ttxt . "\n"

            " Save the tag name
            let {fidx_tidx}_tag_name = tag_name
        endwhile

        " Save the number of tags for this file
        let s:tlist_{fidx}_tag_count = tidx
    endif

    call s:Tlist_Log_Msg('Processed ' . s:tlist_{fidx}_tag_count .
                \ ' tags in ' . a:filename)

    return fidx
endfunction

" Tlist_Update_File
" Update the tags for a file (if needed)
function! Tlist_Update_File(filename, ftype)
    call s:Tlist_Log_Msg('Tlist_Update_File (' . a:filename . ')')
    " If the file doesn't support tag listing, skip it
    if s:Tlist_Skip_File(a:filename, a:ftype)
        return
    endif

    " Convert the file name to a full path
    let fname = fnamemodify(a:filename, ':p')

    " First check whether the file already exists
    let fidx = s:Tlist_Get_File_Index(fname)

    if fidx != -1 && s:tlist_{fidx}_valid
        " File exists and the tags are valid
        " Check whether the file was modified after the last tags update
        " If it is modified, then update the tags
        if s:tlist_{fidx}_mtime == getftime(fname)
            return
        endif
    else
        " If the tags were removed previously based on a user request,
        " as we are going to update the tags (based on the user request),
        " remove the filename from the deleted list
        call s:Tlist_Update_Remove_List(fname, 0)
    endif

    " If the taglist window is opened, update it
    let winnum = bufwinnr(g:TagList_title)
    if winnum == -1
        " Taglist window is not present. Just update the taglist
        " and return
        call s:Tlist_Process_File(fname, a:ftype)
    else
        if g:Tlist_Show_One_File && s:tlist_cur_file_idx != -1
            " If tags for only one file are displayed and we are not
            " updating the tags for that file, then no need to
            " refresh the taglist window. Otherwise, the taglist
            " window should be updated.
            if s:tlist_{s:tlist_cur_file_idx}_filename != fname
                call s:Tlist_Process_File(fname, a:ftype)
                return
            endif
        endif

        " Save the current window number
        let save_winnr = winnr()

        " Goto the taglist window
        call s:Tlist_Window_Goto_Window()

        " Save the cursor position
        let save_line = line('.')
        let save_col = col('.')

        " Update the taglist window
        call s:Tlist_Window_Refresh_File(fname, a:ftype)

        " Restore the cursor position
        if v:version >= 601
            call cursor(save_line, save_col)
        else
            exe save_line
            exe 'normal! ' . save_col . '|'
        endif

        if winnr() != save_winnr
            " Go back to the original window
            call s:Tlist_Exe_Cmd_No_Acmds(save_winnr . 'wincmd w')
        endif
    endif

    " Update the taglist menu
    if g:Tlist_Show_Menu
        call s:Tlist_Menu_Update_File(1)
    endif
endfunction

" Tlist_Window_Close
" Close the taglist window
function! s:Tlist_Window_Close()
    call s:Tlist_Log_Msg('Tlist_Window_Close()')
    " Make sure the taglist window exists
    let winnum = bufwinnr(g:TagList_title)
    if winnum == -1
        call s:Tlist_Warning_Msg('Error: Taglist window is not open')
        return
    endif

    if winnr() == winnum
        " Already in the taglist window. Close it and return
        if winbufnr(2) != -1
            " If a window other than the taglist window is open,
            " then only close the taglist window.
            close
        endif
    else
        " Goto the taglist window, close it and then come back to the
        " original window
        let curbufnr = bufnr('%')
        exe winnum . 'wincmd w'
        close
        " Need to jump back to the original window only if we are not
        " already in that window
        let winnum = bufwinnr(curbufnr)
        if winnr() != winnum
            exe winnum . 'wincmd w'
        endif
    endif
endfunction

" Tlist_Window_Mark_File_Window
" Mark the current window as the file window to use when jumping to a tag.
" Only if the current window is a non-plugin, non-preview and non-taglist
" window
function! s:Tlist_Window_Mark_File_Window()
    if getbufvar('%', '&buftype') == '' && !&previewwindow
        let w:tlist_file_window = "yes"
    endif
endfunction

" Tlist_Window_Open
" Open and refresh the taglist window
function! s:Tlist_Window_Open()
    call s:Tlist_Log_Msg('Tlist_Window_Open()')
    " If the window is open, jump to it
    let winnum = bufwinnr(g:TagList_title)
    if winnum != -1
        " Jump to the existing window
        if winnr() != winnum
            exe winnum . 'wincmd w'
        endif
        return
    endif

    if s:tlist_app_name == "winmanager"
        " Taglist plugin is no longer part of the winmanager app
        let s:tlist_app_name = "none"
    endif

    " Get the filename and filetype for the specified buffer
    let curbuf_name = fnamemodify(bufname('%'), ':p')
    let curbuf_ftype = s:Tlist_Get_Buffer_Filetype('%')
    let cur_lnum = line('.')

    " Mark the current window as the desired window to open a file when a tag
    " is selected.
    call s:Tlist_Window_Mark_File_Window()

    " Open the taglist window
    call s:Tlist_Window_Create()

    call s:Tlist_Window_Refresh()

    if g:Tlist_Show_One_File
        " Add only the current buffer and file
        "
        " If the file doesn't support tag listing, skip it
        if !s:Tlist_Skip_File(curbuf_name, curbuf_ftype)
            call s:Tlist_Window_Refresh_File(curbuf_name, curbuf_ftype)
        endif
    endif

    if g:Tlist_File_Fold_Auto_Close
        " Open the fold for the current file, as all the folds in
        " the taglist window are closed
        let fidx = s:Tlist_Get_File_Index(curbuf_name)
        if fidx != -1
            exe "silent! " . s:tlist_{fidx}_start . "," .
                        \ s:tlist_{fidx}_end . "foldopen!"
        endif
    endif

    " Highlight the current tag
    call s:Tlist_Window_Highlight_Tag(curbuf_name, cur_lnum, 1, 1)
endfunction

" Tlist_Window_Toggle()
" Open or close a taglist window
function! s:Tlist_Window_Toggle()
    call s:Tlist_Log_Msg('Tlist_Window_Toggle()')
    " If taglist window is open then close it.
    let winnum = bufwinnr(g:TagList_title)
    if winnum != -1
        call s:Tlist_Window_Close()
        return
    endif

    call s:Tlist_Window_Open()

    " Go back to the original window, if Tlist_GainFocus_On_ToggleOpen is not
    " set
    if !g:Tlist_GainFocus_On_ToggleOpen
        call s:Tlist_Exe_Cmd_No_Acmds('wincmd p')
    endif

    " Update the taglist menu
    if g:Tlist_Show_Menu
        call s:Tlist_Menu_Update_File(0)
    endif
endfunction

" Tlist_Process_Filelist
" Process multiple files. Each filename is separated by "\n"
" Returns the number of processed files
function! s:Tlist_Process_Filelist(file_names)
    let flist = a:file_names

    " Enable lazy screen updates
    let old_lazyredraw = &lazyredraw
    set lazyredraw

    " Keep track of the number of processed files
    let fcnt = 0

    " Process one file at a time
    while flist != ''
        let nl_idx = stridx(flist, "\n")
        let one_file = strpart(flist, 0, nl_idx)

        " Remove the filename from the list
        let flist = strpart(flist, nl_idx + 1)

        if one_file == ''
            continue
        endif

        " Skip directories
        if isdirectory(one_file)
            continue
        endif

        let ftype = s:Tlist_Detect_Filetype(one_file)

        echon "\r                                                              "
        echon "\rProcessing tags for " . fnamemodify(one_file, ':p:t')

        let fcnt = fcnt + 1

        call Tlist_Update_File(one_file, ftype)
    endwhile

    " Clear the displayed informational messages
    echon "\r                                                            "

    " Restore the previous state
    let &lazyredraw = old_lazyredraw

    return fcnt
endfunction

" Tlist_Process_Dir
" Process the files in a directory matching the specified pattern
function! s:Tlist_Process_Dir(dir_name, pat)
    let flist = glob(a:dir_name . '/' . a:pat) . "\n"

    let fcnt = s:Tlist_Process_Filelist(flist)

    let len = strlen(a:dir_name)
    if a:dir_name[len - 1] == '\' || a:dir_name[len - 1] == '/'
        let glob_expr = a:dir_name . '*'
    else
        let glob_expr = a:dir_name . '/*'
    endif
    let all_files = glob(glob_expr) . "\n"

    while all_files != ''
        let nl_idx = stridx(all_files, "\n")
        let one_file = strpart(all_files, 0, nl_idx)

        let all_files = strpart(all_files, nl_idx + 1)
        if one_file == ''
            continue
        endif

        " Skip non-directory names
        if !isdirectory(one_file)
            continue
        endif

        echon "\r                                                              "
        echon "\rProcessing files in directory " . fnamemodify(one_file, ':t')
        let fcnt = fcnt + s:Tlist_Process_Dir(one_file, a:pat)
    endwhile

    return fcnt
endfunction

" Tlist_Add_Files_Recursive
" Add files recursively from a directory
function! s:Tlist_Add_Files_Recursive(dir, ...)
    let dir_name = fnamemodify(a:dir, ':p')
    if !isdirectory(dir_name)
        call s:Tlist_Warning_Msg('Error: ' . dir_name . ' is not a directory')
        return
    endif

    if a:0 == 1
        " User specified file pattern
        let pat = a:1
    else
        " Default file pattern
        let pat = '*'
    endif

    echon "\r                                                              "
    echon "\rProcessing files in directory " . fnamemodify(dir_name, ':t')
    let fcnt = s:Tlist_Process_Dir(dir_name, pat)

    echon "\rAdded " . fcnt . " files to the taglist"
endfunction

" Tlist_Add_Files
" Add the specified list of files to the taglist
function! s:Tlist_Add_Files(...)
    let flist = ''
    let i = 1

    " Get all the files matching the file patterns supplied as argument
    while i <= a:0
        let flist = flist . glob(a:{i}) . "\n"
        let i = i + 1
    endwhile

    if flist == ''
        call s:Tlist_Warning_Msg('Error: No matching files are found')
        return
    endif

    let fcnt = s:Tlist_Process_Filelist(flist)
    echon "\rAdded " . fcnt . " files to the taglist"
endfunction

" Tlist_Extract_Tagtype
" Extract the tag type from the tag text
function! s:Tlist_Extract_Tagtype(tag_line)
    " The tag type is after the tag prototype field. The prototype field
    " ends with the /;"\t string. We add 4 at the end to skip the characters
    " in this special string..
    let start = strridx(a:tag_line, '/;"' . "\t") + 4
    let end = strridx(a:tag_line, 'line:') - 1
    let ttype = strpart(a:tag_line, start, end - start)

    return ttype
endfunction

" Tlist_Extract_Tag_Scope
" Extract the tag scope from the tag text
function! s:Tlist_Extract_Tag_Scope(tag_line)
    let start = strridx(a:tag_line, 'line:')
    let end = strridx(a:tag_line, "\t")
    if end <= start
        return ''
    endif

    let tag_scope = strpart(a:tag_line, end + 1)
    let tag_scope = strpart(tag_scope, stridx(tag_scope, ':') + 1)

    return tag_scope
endfunction

" Tlist_Refresh()
" Refresh the taglist
function! s:Tlist_Refresh()
    call s:Tlist_Log_Msg('Tlist_Refresh (Skip_Refresh = ' .
                \ s:Tlist_Skip_Refresh . ', ' . bufname('%') . ')')
    " If we are entering the buffer from one of the taglist functions, then
    " no need to refresh the taglist window again.
    if s:Tlist_Skip_Refresh
        " We still need to update the taglist menu
        if g:Tlist_Show_Menu
            call s:Tlist_Menu_Update_File(0)
        endif
        return
    endif

    " If part of the winmanager plugin and not configured to process
    " tags always and not configured to display the tags menu, then return
    if (s:tlist_app_name == 'winmanager') && !g:Tlist_Process_File_Always
                \ && !g:Tlist_Show_Menu
        return
    endif

    " Skip buffers with 'buftype' set to nofile, nowrite, quickfix or help
    if &buftype != ''
        return
    endif

    let filename = fnamemodify(bufname('%'), ':p')
    let ftype = s:Tlist_Get_Buffer_Filetype('%')

    " If the file doesn't support tag listing, skip it
    if s:Tlist_Skip_File(filename, ftype)
        return
    endif

    let tlist_win = bufwinnr(g:TagList_title)

    " If the taglist window is not opened and not configured to process
    " tags always and not displaying the tags menu, then return
    if tlist_win == -1 && !g:Tlist_Process_File_Always && !g:Tlist_Show_Menu
        return
    endif

    let fidx = s:Tlist_Get_File_Index(filename)
    if fidx == -1
        " Check whether this file is removed based on user request
        " If it is, then don't display the tags for this file
        if s:Tlist_User_Removed_File(filename)
            return
        endif

        " If the taglist should not be auto updated, then return
        if !g:Tlist_Auto_Update
            return
        endif
    endif

    let cur_lnum = line('.')

    if fidx == -1
        " Update the tags for the file
        let fidx = s:Tlist_Process_File(filename, ftype)
    else
        let mtime = getftime(filename)
        if s:tlist_{fidx}_mtime != mtime
            " Invalidate the tags listed for this file
            let s:tlist_{fidx}_valid = 0

            " Update the taglist and the window
            call Tlist_Update_File(filename, ftype)

            " Store the new file modification time
            let s:tlist_{fidx}_mtime = mtime
        endif
    endif

    " Update the taglist window
    if tlist_win != -1
        " Disable screen updates
        let old_lazyredraw = &lazyredraw
        set nolazyredraw

        " Save the current window number
        let save_winnr = winnr()

        " Goto the taglist window
        call s:Tlist_Window_Goto_Window()

        if !g:Tlist_Auto_Highlight_Tag || !g:Tlist_Highlight_Tag_On_BufEnter
            " Save the cursor position
            let save_line = line('.')
            let save_col = col('.')
        endif

        " Update the taglist window
        call s:Tlist_Window_Refresh_File(filename, ftype)

        " Open the fold for the file
        exe "silent! " . s:tlist_{fidx}_start . "," .
                    \ s:tlist_{fidx}_end . "foldopen!"

        if g:Tlist_Highlight_Tag_On_BufEnter && g:Tlist_Auto_Highlight_Tag
            if g:Tlist_Show_One_File && s:tlist_cur_file_idx != fidx
                " If displaying tags for only one file in the taglist
                " window and about to display the tags for a new file,
                " then center the current tag line for the new file
                let center_tag_line = 1
            else
                let center_tag_line = 0
            endif

            " Highlight the current tag
            call s:Tlist_Window_Highlight_Tag(filename, cur_lnum, 1, center_tag_line)
        else
            " Restore the cursor position
            if v:version >= 601
                call cursor(save_line, save_col)
            else
                exe save_line
                exe 'normal! ' . save_col . '|'
            endif
        endif

        " Jump back to the original window
        if save_winnr != winnr()
            call s:Tlist_Exe_Cmd_No_Acmds(save_winnr . 'wincmd w')
        endif

        " Restore screen updates
        let &lazyredraw = old_lazyredraw
    endif

    " Update the taglist menu
    if g:Tlist_Show_Menu
        call s:Tlist_Menu_Update_File(0)
    endif
endfunction

" Tlist_Change_Sort()
" Change the sort order of the tag listing
" caller == 'cmd', command used in the taglist window
" caller == 'menu', taglist menu
" action == 'toggle', toggle sort from name to order and vice versa
" action == 'set', set the sort order to sort_type
function! s:Tlist_Change_Sort(caller, action, sort_type)
    call s:Tlist_Log_Msg('Tlist_Change_Sort (caller = ' . a:caller .
            \ ', action = ' . a:action . ', sort_type = ' . a:sort_type . ')')
    if a:caller == 'cmd'
        let fidx = s:Tlist_Window_Get_File_Index_By_Linenum(line('.'))
        if fidx == -1
            return
        endif

        " Remove the previous highlighting
        match none
    elseif a:caller == 'menu'
        let fidx = s:Tlist_Get_File_Index(fnamemodify(bufname('%'), ':p'))
        if fidx == -1
            return
        endif
    endif

    if a:action == 'toggle'
        let sort_type = s:tlist_{fidx}_sort_type

        " Toggle the sort order from 'name' to 'order' and vice versa
        if sort_type == 'name'
            let s:tlist_{fidx}_sort_type = 'order'
        else
            let s:tlist_{fidx}_sort_type = 'name'
        endif
    else
        let s:tlist_{fidx}_sort_type = a:sort_type
    endif

    " Invalidate the tags listed for this file
    let s:tlist_{fidx}_valid = 0

    if a:caller  == 'cmd'
        " Save the current line for later restoration
        let curline = '\V\^' . escape(getline('.'), "\\") . '\$'

        call s:Tlist_Window_Refresh_File(s:tlist_{fidx}_filename,
                    \   s:tlist_{fidx}_filetype)

        exe s:tlist_{fidx}_start . ',' . s:tlist_{fidx}_end . 'foldopen!'

        " Go back to the cursor line before the tag list is sorted
        call search(curline, 'w')

        call s:Tlist_Menu_Update_File(1)
    else
        call s:Tlist_Menu_Remove_File()

        call s:Tlist_Refresh()
    endif
endfunction

" Tlist_Update_Current_File()
" Update taglist for the current buffer by regenerating the tag list
" Contributed by WEN Guopeng.
function! s:Tlist_Update_Current_File()
    call s:Tlist_Log_Msg('Tlist_Update_Current_File()')
    if winnr() == bufwinnr(g:TagList_title)
        " In the taglist window. Update the current file
        call s:Tlist_Window_Update_File()
    else
        " Not in the taglist window. Update the current buffer
        let filename = fnamemodify(bufname('%'), ':p')
        let fidx = s:Tlist_Get_File_Index(filename)
        if fidx != -1
            let s:tlist_{fidx}_valid = 0
        endif
        let ft = s:Tlist_Get_Buffer_Filetype('%')
        call Tlist_Update_File(filename, ft)
    endif
endfunction

" Tlist_Window_Update_File()
" Update the tags displayed in the taglist window
function! s:Tlist_Window_Update_File()
    call s:Tlist_Log_Msg('Tlist_Window_Update_File()')
    let fidx = s:Tlist_Window_Get_File_Index_By_Linenum(line('.'))
    if fidx == -1
        return
    endif

    " Remove the previous highlighting
    match none

    " Save the current line for later restoration
    let curline = '\V\^' . escape(getline('.'), "\\") . '\$'

    let s:tlist_{fidx}_valid = 0

    " Update the taglist window
    call s:Tlist_Window_Refresh_File(s:tlist_{fidx}_filename,
                \ s:tlist_{fidx}_filetype)

    exe s:tlist_{fidx}_start . ',' . s:tlist_{fidx}_end . 'foldopen!'

    " Go back to the tag line before the list is updated
    call search(curline, 'w')
endfunction

" Tlist_Window_Get_Tag_Type_By_Linenum()
" Return the tag type index for the specified line in the taglist window
function! s:Tlist_Window_Get_Tag_Type_By_Linenum(fidx, lnum)
    let ftype = s:tlist_{a:fidx}_filetype

    " Determine to which tag type the current line number belongs to using the
    " tag type start line number and the number of tags in a tag type
    let i = 1
    while i <= s:tlist_{ftype}_count
        let ttype = s:tlist_{ftype}_{i}_name
        let start_lnum =
                    \ s:tlist_{a:fidx}_start + s:tlist_{a:fidx}_{ttype}_offset
        let end =  start_lnum + s:tlist_{a:fidx}_{ttype}_count
        if a:lnum >= start_lnum && a:lnum <= end
            break
        endif
        let i = i + 1
    endwhile

    " Current line doesn't belong to any of the displayed tag types
    if i > s:tlist_{ftype}_count
        return ''
    endif

    return ttype
endfunction

" Tlist_Window_Get_Tag_Index()
" Return the tag index for the specified line in the taglist window
function! s:Tlist_Window_Get_Tag_Index(fidx, lnum)
    let ttype = s:Tlist_Window_Get_Tag_Type_By_Linenum(a:fidx, a:lnum)

    " Current line doesn't belong to any of the displayed tag types
    if ttype == ''
        return 0
    endif

    " Compute the index into the displayed tags for the tag type
    let ttype_lnum = s:tlist_{a:fidx}_start + s:tlist_{a:fidx}_{ttype}_offset
    let tidx = a:lnum - ttype_lnum
    if tidx == 0
        return 0
    endif

    " Get the corresponding tag line and return it
    return s:tlist_{a:fidx}_{ttype}_{tidx}
endfunction

" Tlist_Window_Highlight_Line
" Highlight the current line
function! s:Tlist_Window_Highlight_Line()
    " Clear previously selected name
    match none

    " Highlight the current line
    if g:Tlist_Display_Prototype == 0
        let pat = '/\%' . line('.') . 'l\s\+\zs.*/'
    else
        let pat = '/\%' . line('.') . 'l.*/'
    endif

    exe 'match TagListTagName ' . pat
endfunction

" Tlist_Window_Open_File
" Open the specified file in either a new window or an existing window
" and place the cursor at the specified tag pattern
function! s:Tlist_Window_Open_File(win_ctrl, filename, tagpat)
    call s:Tlist_Log_Msg('Tlist_Window_Open_File (' . a:filename . ',' .
                \ a:win_ctrl . ')')
    let prev_Tlist_Skip_Refresh = s:Tlist_Skip_Refresh
    let s:Tlist_Skip_Refresh = 1

    if s:tlist_app_name == "winmanager"
        " Let the winmanager edit the file
        call WinManagerFileEdit(a:filename, a:win_ctrl == 'newwin')
    else

    if a:win_ctrl == 'newtab'
        " Create a new tab
        exe 'tabnew ' . escape(a:filename, ' ')
        " Open the taglist window in the new tab
        call s:Tlist_Window_Open()
    endif

    if a:win_ctrl == 'checktab'
        " Check whether the file is present in any of the tabs.
        " If the file is present in the current tab, then use the
        " current tab.
        if bufwinnr(a:filename) != -1
            let file_present_in_tab = 1
            let i = tabpagenr()
        else
            let i = 1
            let bnum = bufnr(a:filename)
            let file_present_in_tab = 0
            while i <= tabpagenr('$')
                if index(tabpagebuflist(i), bnum) != -1
                    let file_present_in_tab = 1
                    break
                endif
                let i += 1
            endwhile
        endif

        if file_present_in_tab
            " Goto the tab containing the file
            exe 'tabnext ' . i
        else
            " Open a new tab
            exe 'tabnew ' . escape(a:filename, ' ')

            " Open the taglist window
            call s:Tlist_Window_Open()
        endif
    endif

    let winnum = -1
    if a:win_ctrl == 'prevwin'
        " Open the file in the previous window, if it is usable
        let cur_win = winnr()
        wincmd p
        if &buftype == '' && !&previewwindow
            exe "edit " . escape(a:filename, ' ')
            let winnum = winnr()
        else
            " Previous window is not usable
            exe cur_win . 'wincmd w'
        endif
    endif

    " Goto the window containing the file.  If the window is not there, open a
    " new window
    if winnum == -1
        let winnum = bufwinnr(a:filename)
    endif

    if winnum == -1
        " Locate the previously used window for opening a file
        let fwin_num = 0
        let first_usable_win = 0

        let i = 1
        let bnum = winbufnr(i)
        while bnum != -1
            if getwinvar(i, 'tlist_file_window') == 'yes'
                let fwin_num = i
                break
            endif
            if first_usable_win == 0 &&
                        \ getbufvar(bnum, '&buftype') == '' &&
                        \ !getwinvar(i, '&previewwindow')
                " First non-taglist, non-plugin and non-preview window
                let first_usable_win = i
            endif
            let i = i + 1
            let bnum = winbufnr(i)
        endwhile

        " If a previously used window is not found, then use the first
        " non-taglist window
        if fwin_num == 0
            let fwin_num = first_usable_win
        endif

        if fwin_num != 0
            " Jump to the file window
            exe fwin_num . "wincmd w"

            " If the user asked to jump to the tag in a new window, then split
            " the existing window into two.
            if a:win_ctrl == 'newwin'
                split
            endif
            exe "edit " . escape(a:filename, ' ')
        else
            " Open a new window
            let cmd_mod = (v:version >= 700) ? 'keepalt ' : ''
            if g:Tlist_Use_Horiz_Window
                exe cmd_mod . 'leftabove split ' . escape(a:filename, ' ')
            else
                if winbufnr(2) == -1
                    " Only the taglist window is present
                    if g:Tlist_Use_Right_Window
                        exe cmd_mod . 'leftabove vertical split ' .
                                    \ escape(a:filename, ' ')
                    else
                        exe cmd_mod . 'rightbelow vertical split ' .
                                    \ escape(a:filename, ' ')
                    endif

                    " Go to the taglist window to change the window size to
                    " the user configured value
                    call s:Tlist_Exe_Cmd_No_Acmds('wincmd p')
                    if g:Tlist_Use_Horiz_Window
                        exe 'resize ' . g:Tlist_WinHeight
                    else
                        exe 'vertical resize ' . g:Tlist_WinWidth
                    endif
                    " Go back to the file window
                    call s:Tlist_Exe_Cmd_No_Acmds('wincmd p')
                else
                    " A plugin or help window is also present
                    wincmd w
                    exe cmd_mod . 'leftabove split ' . escape(a:filename, ' ')
                endif
            endif
        endif
        " Mark the window, so that it can be reused.
        call s:Tlist_Window_Mark_File_Window()
    else
        if v:version >= 700
            " If the file is opened in more than one window, then check
            " whether the last accessed window has the selected file.
            " If it does, then use that window.
            let lastwin_bufnum = winbufnr(winnr('#'))
            if bufnr(a:filename) == lastwin_bufnum
                let winnum = winnr('#')
            endif
        endif
        exe winnum . 'wincmd w'

        " If the user asked to jump to the tag in a new window, then split the
        " existing window into two.
        if a:win_ctrl == 'newwin'
            split
        endif
    endif
    endif

    " Jump to the tag
    if a:tagpat != ''
        " Add the current cursor position to the jump list, so that user can
        " jump back using the ' and ` marks.
        mark '
        silent call search(a:tagpat, 'w')

        " Bring the line to the middle of the window
        normal! z.

        " If the line is inside a fold, open the fold
        if foldclosed('.') != -1
            .foldopen
        endif
    endif

    " If the user selects to preview the tag then jump back to the
    " taglist window
    if a:win_ctrl == 'preview'
        " Go back to the taglist window
        let winnum = bufwinnr(g:TagList_title)
        exe winnum . 'wincmd w'
    else
        " If the user has selected to close the taglist window, when a
        " tag is selected, close the taglist  window
        if g:Tlist_Close_On_Select
            call s:Tlist_Window_Goto_Window()
            close

            " Go back to the window displaying the selected file
            let wnum = bufwinnr(a:filename)
            if wnum != -1 && wnum != winnr()
                call s:Tlist_Exe_Cmd_No_Acmds(wnum . 'wincmd w')
            endif
        endif
    endif

    let s:Tlist_Skip_Refresh = prev_Tlist_Skip_Refresh
endfunction

" Tlist_Window_Jump_To_Tag()
" Jump to the location of the current tag
" win_ctrl == useopen - Reuse the existing file window
" win_ctrl == newwin - Open a new window
" win_ctrl == preview - Preview the tag
" win_ctrl == prevwin - Open in previous window
" win_ctrl == newtab - Open in new tab
function! s:Tlist_Window_Jump_To_Tag(win_ctrl)
    call s:Tlist_Log_Msg('Tlist_Window_Jump_To_Tag(' . a:win_ctrl . ')')
    " Do not process comment lines and empty lines
    let curline = getline('.')
    if curline =~ '^\s*$' || curline[0] == '"'
        return
    endif

    " If inside a closed fold, then use the first line of the fold
    " and jump to the file.
    let lnum = foldclosed('.')
    if lnum == -1
        " Jump to the selected tag or file
        let lnum = line('.')
    else
        " Open the closed fold
        .foldopen!
    endif

    let fidx = s:Tlist_Window_Get_File_Index_By_Linenum(lnum)
    if fidx == -1
        return
    endif

    " Get the tag output for the current tag
    let tidx = s:Tlist_Window_Get_Tag_Index(fidx, lnum)
    if tidx != 0
        let tagpat = s:Tlist_Get_Tag_SearchPat(fidx, tidx)

        " Highlight the tagline
        call s:Tlist_Window_Highlight_Line()
    else
        " Selected a line which is not a tag name. Just edit the file
        let tagpat = ''
    endif

    call s:Tlist_Window_Open_File(a:win_ctrl, s:tlist_{fidx}_filename, tagpat)
endfunction

" Tlist_Window_Show_Info()
" Display information about the entry under the cursor
function! s:Tlist_Window_Show_Info()
    call s:Tlist_Log_Msg('Tlist_Window_Show_Info()')

    " Clear the previously displayed line
    echo

    " Do not process comment lines and empty lines
    let curline = getline('.')
    if curline =~ '^\s*$' || curline[0] == '"'
        return
    endif

    " If inside a fold, then don't display the prototype
    if foldclosed('.') != -1
        return
    endif

    let lnum = line('.')

    " Get the file index
    let fidx = s:Tlist_Window_Get_File_Index_By_Linenum(lnum)
    if fidx == -1
        return
    endif

    if lnum == s:tlist_{fidx}_start
        " Cursor is on a file name
        let fname = s:tlist_{fidx}_filename
        if strlen(fname) > 50
            let fname = fnamemodify(fname, ':t')
        endif
        echo fname . ', Filetype=' . s:tlist_{fidx}_filetype .
                    \  ', Tag count=' . s:tlist_{fidx}_tag_count
        return
    endif

    " Get the tag output line for the current tag
    let tidx = s:Tlist_Window_Get_Tag_Index(fidx, lnum)
    if tidx == 0
        " Cursor is on a tag type
        let ttype = s:Tlist_Window_Get_Tag_Type_By_Linenum(fidx, lnum)
        if ttype == ''
            return
        endif

        let ttype_name = ''

        let ftype = s:tlist_{fidx}_filetype
        let i = 1
        while i <= s:tlist_{ftype}_count
            if ttype == s:tlist_{ftype}_{i}_name
                let ttype_name = s:tlist_{ftype}_{i}_fullname
                break
            endif
            let i = i + 1
        endwhile

        echo 'Tag type=' . ttype_name .
                    \ ', Tag count=' . s:tlist_{fidx}_{ttype}_count
        return
    endif

    " Get the tag search pattern and display it
    let proto = s:Tlist_Get_Tag_Prototype(fidx, tidx)
    echo strpart(proto, 0, &columns - 1)
endfunction

" Tlist_Find_Nearest_Tag_Idx
" Find the tag idx nearest to the supplied line number
" Returns -1, if a tag couldn't be found for the specified line number
function! s:Tlist_Find_Nearest_Tag_Idx(fidx, linenum)
    let sort_type = s:tlist_{a:fidx}_sort_type

    let left = 1
    let right = s:tlist_{a:fidx}_tag_count

    if sort_type == 'order'
        " Tags sorted by order, use a binary search.
        " The idea behind this function is taken from the ctags.vim script (by
        " Alexey Marinichev) available at the Vim online website.

        " If the current line is the less than the first tag, then no need to
        " search
        let first_lnum = s:Tlist_Get_Tag_Linenum(a:fidx, 1)

        if a:linenum < first_lnum
            return -1
        endif

        while left < right
            let middle = (right + left + 1) / 2
            let middle_lnum = s:Tlist_Get_Tag_Linenum(a:fidx, middle)

            if middle_lnum == a:linenum
                let left = middle
                break
            endif

            if middle_lnum > a:linenum
                let right = middle - 1
            else
                let left = middle
            endif
        endwhile
    else
        " Tags sorted by name, use a linear search. (contributed by Dave
        " Eggum).
        " Look for a tag with a line number less than or equal to the supplied
        " line number. If multiple tags are found, then use the tag with the
        " line number closest to the supplied line number. IOW, use the tag
        " with the highest line number.
        let closest_lnum = 0
        let final_left = 0
        while left <= right
            let lnum = s:Tlist_Get_Tag_Linenum(a:fidx, left)

            if lnum < a:linenum && lnum > closest_lnum
                let closest_lnum = lnum
                let final_left = left
            elseif lnum == a:linenum
                let closest_lnum = lnum
                let final_left = left
                break
            else
                let left = left + 1
            endif
        endwhile
        if closest_lnum == 0
            return -1
        endif
        if left >= right
            let left = final_left
        endif
    endif

    return left
endfunction

" Tlist_Window_Highlight_Tag()
" Highlight the current tag
" cntx == 1, Called by the taglist plugin itself
" cntx == 2, Forced by the user through the TlistHighlightTag command
" center = 1, move the tag line to the center of the taglist window
function! s:Tlist_Window_Highlight_Tag(filename, cur_lnum, cntx, center)
    " Highlight the current tag only if the user configured the
    " taglist plugin to do so or if the user explictly invoked the
    " command to highlight the current tag.
    if !g:Tlist_Auto_Highlight_Tag && a:cntx == 1
        return
    endif

    if a:filename == ''
        return
    endif

    " Make sure the taglist window is present
    let winnum = bufwinnr(g:TagList_title)
    if winnum == -1
        call s:Tlist_Warning_Msg('Error: Taglist window is not open')
        return
    endif

    let fidx = s:Tlist_Get_File_Index(a:filename)
    if fidx == -1
        return
    endif

    " If the file is currently not displayed in the taglist window, then retrn
    if !s:tlist_{fidx}_visible
        return
    endif

    " If there are no tags for this file, then no need to proceed further
    if s:tlist_{fidx}_tag_count == 0
        return
    endif

    " Ignore all autocommands
    let old_ei = &eventignore
    set eventignore=all

    " Save the original window number
    let org_winnr = winnr()

    if org_winnr == winnum
        let in_taglist_window = 1
    else
        let in_taglist_window = 0
    endif

    " Go to the taglist window
    if !in_taglist_window
        exe winnum . 'wincmd w'
    endif

    " Clear previously selected name
    match none

    let tidx = s:Tlist_Find_Nearest_Tag_Idx(fidx, a:cur_lnum)
    if tidx == -1
        " Make sure the current tag line is visible in the taglist window.
        " Calling the winline() function makes the line visible.  Don't know
        " of a better way to achieve this.
        let lnum = line('.')

        if lnum < s:tlist_{fidx}_start || lnum > s:tlist_{fidx}_end
            " Move the cursor to the beginning of the file
            exe s:tlist_{fidx}_start
        endif

        if foldclosed('.') != -1
            .foldopen
        endif

        call winline()

        if !in_taglist_window
            exe org_winnr . 'wincmd w'
        endif

        " Restore the autocommands
        let &eventignore = old_ei
        return
    endif

    " Extract the tag type
    let ttype = s:Tlist_Get_Tag_Type_By_Tag(fidx, tidx)

    " Compute the line number
    " Start of file + Start of tag type + offset
    let lnum = s:tlist_{fidx}_start + s:tlist_{fidx}_{ttype}_offset +
                \ s:tlist_{fidx}_{tidx}_ttype_idx

    " Goto the line containing the tag
    exe lnum

    " Open the fold
    if foldclosed('.') != -1
        .foldopen
    endif

    if a:center
        " Move the tag line to the center of the taglist window
        normal! z.
    else
        " Make sure the current tag line is visible in the taglist window.
        " Calling the winline() function makes the line visible.  Don't know
        " of a better way to achieve this.
        call winline()
    endif

    " Highlight the tag name
    call s:Tlist_Window_Highlight_Line()

    " Go back to the original window
    if !in_taglist_window
        exe org_winnr . 'wincmd w'
    endif

    " Restore the autocommands
    let &eventignore = old_ei
    return
endfunction

" Tlist_Get_Tag_Prototype_By_Line
" Get the prototype for the tag on or before the specified line number in the
" current buffer
function! Tlist_Get_Tag_Prototype_By_Line(...)
    if a:0 == 0
        " Arguments are not supplied. Use the current buffer name
        " and line number
        let filename = bufname('%')
        let linenr = line('.')
    elseif a:0 == 2
        " Filename and line number are specified
        let filename = a:1
        let linenr = a:2
        if linenr !~ '\d\+'
            " Invalid line number
            return ""
        endif
    else
        " Sufficient arguments are not supplied
        let msg =  'Usage: Tlist_Get_Tag_Prototype_By_Line <filename> ' .
                                \ '<line_number>'
        call s:Tlist_Warning_Msg(msg)
        return ""
    endif

    " Expand the file to a fully qualified name
    let filename = fnamemodify(filename, ':p')
    if filename == ''
        return ""
    endif

    let fidx = s:Tlist_Get_File_Index(filename)
    if fidx == -1
        return ""
    endif

    " If there are no tags for this file, then no need to proceed further
    if s:tlist_{fidx}_tag_count == 0
        return ""
    endif

    " Get the tag text using the line number
    let tidx = s:Tlist_Find_Nearest_Tag_Idx(fidx, linenr)
    if tidx == -1
        return ""
    endif

    return s:Tlist_Get_Tag_Prototype(fidx, tidx)
endfunction

" Tlist_Get_Tagname_By_Line
" Get the tag name on or before the specified line number in the
" current buffer
function! Tlist_Get_Tagname_By_Line(...)
    if a:0 == 0
        " Arguments are not supplied. Use the current buffer name
        " and line number
        let filename = bufname('%')
        let linenr = line('.')
    elseif a:0 == 2
        " Filename and line number are specified
        let filename = a:1
        let linenr = a:2
        if linenr !~ '\d\+'
            " Invalid line number
            return ""
        endif
    else
        " Sufficient arguments are not supplied
        let msg =  'Usage: Tlist_Get_Tagname_By_Line <filename> <line_number>'
        call s:Tlist_Warning_Msg(msg)
        return ""
    endif

    " Make sure the current file has a name
    let filename = fnamemodify(filename, ':p')
    if filename == ''
        return ""
    endif

    let fidx = s:Tlist_Get_File_Index(filename)
    if fidx == -1
        return ""
    endif

    " If there are no tags for this file, then no need to proceed further
    if s:tlist_{fidx}_tag_count == 0
        return ""
    endif

    " Get the tag name using the line number
    let tidx = s:Tlist_Find_Nearest_Tag_Idx(fidx, linenr)
    if tidx == -1
        return ""
    endif

    let name = s:tlist_{fidx}_{tidx}_tag_name

    if g:Tlist_Display_Tag_Scope
        " Add the scope of the tag
        let tag_scope = s:tlist_{fidx}_{tidx}_tag_scope
        if tag_scope != ''
            let name = name . ' [' . tag_scope . ']'
        endif
    endif

    return name
endfunction

" Tlist_Get_Filenames
" Return the list of file names in the taglist. The names are separated
" by a newline ('\n')
function! Tlist_Get_Filenames()
    let fnames = ''

    let i = 0

    while i < s:tlist_file_count
        let fnames = fnames . s:tlist_{i}_filename . "\n"
        let i = i + 1
    endwhile

    return fnames
endfunction

" Tlist_Window_Move_To_File
" Move the cursor to the beginning of the current file or the next file
" or the previous file in the taglist window
" dir == -1, move to start of current or previous function
" dir == 1, move to start of next function
function! s:Tlist_Window_Move_To_File(dir)
    if foldlevel('.') == 0
        " Cursor is on a non-folded line (it is not in any of the files)
        " Move it to a folded line
        if a:dir == -1
            normal! zk
        else
            " While moving down to the start of the next fold,
            " no need to do go to the start of the next file.
            normal! zj
            return
        endif
    endif

    let fidx = s:Tlist_Window_Get_File_Index_By_Linenum(line('.'))
    if fidx == -1
        return
    endif

    let cur_lnum = line('.')

    if a:dir == -1
        if cur_lnum > s:tlist_{fidx}_start
            " Move to the beginning of the current file
            exe s:tlist_{fidx}_start
            return
        endif

        if fidx != 0
            " Move to the beginning of the previous file
            let fidx = fidx - 1
        else
            " Cursor is at the first file, wrap around to the last file
            let fidx = s:tlist_file_count - 1
        endif

        exe s:tlist_{fidx}_start
        return
    else
        " Move to the beginning of the next file
        let fidx = fidx + 1

        if fidx >= s:tlist_file_count
            " Cursor is at the last file, wrap around to the first file
            let fidx = 0
        endif

        if s:tlist_{fidx}_start != 0
            exe s:tlist_{fidx}_start
        endif
        return
    endif
endfunction

" Tlist_Session_Load
" Load a taglist session (information about all the displayed files
" and the tags) from the specified file
function! s:Tlist_Session_Load(...)
    if a:0 == 0 || a:1 == ''
        call s:Tlist_Warning_Msg('Usage: TlistSessionLoad <filename>')
        return
    endif

    let sessionfile = a:1

    if !filereadable(sessionfile)
        let msg = 'Taglist: Error - Unable to open file ' . sessionfile
        call s:Tlist_Warning_Msg(msg)
        return
    endif

    " Mark the current window as the file window
    call s:Tlist_Window_Mark_File_Window()

    " Source the session file
    exe 'source ' . sessionfile

    let new_file_count = g:tlist_file_count
    unlet! g:tlist_file_count

    let i = 0
    while i < new_file_count
        let ftype = g:tlist_{i}_filetype
        unlet! g:tlist_{i}_filetype

        if !exists('s:tlist_' . ftype . '_count')
            if s:Tlist_FileType_Init(ftype) == 0
                let i = i + 1
                continue
            endif
        endif

        let fname = g:tlist_{i}_filename
        unlet! g:tlist_{i}_filename

        let fidx = s:Tlist_Get_File_Index(fname)
        if fidx != -1
            let s:tlist_{fidx}_visible = 0
            let i = i + 1
            continue
        else
            " As we are loading the tags from the session file, if this
            " file was previously deleted by the user, now we need to
            " add it back. So remove the file from the deleted list.
            call s:Tlist_Update_Remove_List(fname, 0)
        endif

        let fidx = s:Tlist_Init_File(fname, ftype)

        let s:tlist_{fidx}_filename = fname

        let s:tlist_{fidx}_sort_type = g:tlist_{i}_sort_type
        unlet! g:tlist_{i}_sort_type

        let s:tlist_{fidx}_filetype = ftype
        let s:tlist_{fidx}_mtime = getftime(fname)

        let s:tlist_{fidx}_start = 0
        let s:tlist_{fidx}_end = 0

        let s:tlist_{fidx}_valid = 1

        let s:tlist_{fidx}_tag_count = g:tlist_{i}_tag_count
        unlet! g:tlist_{i}_tag_count

        let j = 1
        while j <= s:tlist_{fidx}_tag_count
            let s:tlist_{fidx}_{j}_tag = g:tlist_{i}_{j}_tag
            let s:tlist_{fidx}_{j}_tag_name = g:tlist_{i}_{j}_tag_name
            let s:tlist_{fidx}_{j}_ttype_idx = g:tlist_{i}_{j}_ttype_idx
            unlet! g:tlist_{i}_{j}_tag
            unlet! g:tlist_{i}_{j}_tag_name
            unlet! g:tlist_{i}_{j}_ttype_idx
            let j = j + 1
        endwhile

        let j = 1
        while j <= s:tlist_{ftype}_count
            let ttype = s:tlist_{ftype}_{j}_name

            if exists('g:tlist_' . i . '_' . ttype)
                let s:tlist_{fidx}_{ttype} = g:tlist_{i}_{ttype}
                unlet! g:tlist_{i}_{ttype}
                let s:tlist_{fidx}_{ttype}_offset = 0
                let s:tlist_{fidx}_{ttype}_count = g:tlist_{i}_{ttype}_count
                unlet! g:tlist_{i}_{ttype}_count

                let k = 1
                while k <= s:tlist_{fidx}_{ttype}_count
                    let s:tlist_{fidx}_{ttype}_{k} = g:tlist_{i}_{ttype}_{k}
                    unlet! g:tlist_{i}_{ttype}_{k}
                    let k = k + 1
                endwhile
            else
                let s:tlist_{fidx}_{ttype} = ''
                let s:tlist_{fidx}_{ttype}_offset = 0
                let s:tlist_{fidx}_{ttype}_count = 0
            endif

            let j = j + 1
        endwhile

        let i = i + 1
    endwhile

    " If the taglist window is open, then update it
    let winnum = bufwinnr(g:TagList_title)
    if winnum != -1
        let save_winnr = winnr()

        " Goto the taglist window
        call s:Tlist_Window_Goto_Window()

        " Refresh the taglist window
        call s:Tlist_Window_Refresh()

        " Go back to the original window
        if save_winnr != winnr()
            call s:Tlist_Exe_Cmd_No_Acmds('wincmd p')
        endif
    endif
endfunction

" Tlist_Session_Save
" Save a taglist session (information about all the displayed files
" and the tags) into the specified file
function! s:Tlist_Session_Save(...)
    if a:0 == 0 || a:1 == ''
        call s:Tlist_Warning_Msg('Usage: TlistSessionSave <filename>')
        return
    endif

    let sessionfile = a:1

    if s:tlist_file_count == 0
        " There is nothing to save
        call s:Tlist_Warning_Msg('Warning: Taglist is empty. Nothing to save.')
        return
    endif

    if filereadable(sessionfile)
        let ans = input('Do you want to overwrite ' . sessionfile . ' (Y/N)?')
        if ans !=? 'y'
            return
        endif

        echo "\n"
    endif

    let old_verbose = &verbose
    set verbose&vim

    exe 'redir! > ' . sessionfile

    silent! echo '" Taglist session file. This file is auto-generated.'
    silent! echo '" File information'
    silent! echo 'let tlist_file_count = ' . s:tlist_file_count

    let i = 0

    while i < s:tlist_file_count
        " Store information about the file
        silent! echo 'let tlist_' . i . "_filename = '" .
                                            \ s:tlist_{i}_filename . "'"
        silent! echo 'let tlist_' . i . '_sort_type = "' .
                                                \ s:tlist_{i}_sort_type . '"'
        silent! echo 'let tlist_' . i . '_filetype = "' .
                                            \ s:tlist_{i}_filetype . '"'
        silent! echo 'let tlist_' . i . '_tag_count = ' .
                                                        \ s:tlist_{i}_tag_count
        " Store information about all the tags
        let j = 1
        while j <= s:tlist_{i}_tag_count
            let txt = escape(s:tlist_{i}_{j}_tag, '"\\')
            silent! echo 'let tlist_' . i . '_' . j . '_tag = "' . txt . '"'
            silent! echo 'let tlist_' . i . '_' . j . '_tag_name = "' .
                        \ s:tlist_{i}_{j}_tag_name . '"'
            silent! echo 'let tlist_' . i . '_' . j . '_ttype_idx' . ' = ' .
                        \ s:tlist_{i}_{j}_ttype_idx
            let j = j + 1
        endwhile

        " Store information about all the tags grouped by their type
        let ftype = s:tlist_{i}_filetype
        let j = 1
        while j <= s:tlist_{ftype}_count
            let ttype = s:tlist_{ftype}_{j}_name
            if s:tlist_{i}_{ttype}_count != 0
                let txt = escape(s:tlist_{i}_{ttype}, '"\')
                let txt = substitute(txt, "\n", "\\\\n", 'g')
                silent! echo 'let tlist_' . i . '_' . ttype . ' = "' .
                                                \ txt . '"'
                silent! echo 'let tlist_' . i . '_' . ttype . '_count = ' .
                                                     \ s:tlist_{i}_{ttype}_count
                let k = 1
                while k <= s:tlist_{i}_{ttype}_count
                    silent! echo 'let tlist_' . i . '_' . ttype . '_' . k .
                                \ ' = ' . s:tlist_{i}_{ttype}_{k}
                    let k = k + 1
                endwhile
            endif
            let j = j + 1
        endwhile

        silent! echo

        let i = i + 1
    endwhile

    redir END

    let &verbose = old_verbose
endfunction

" Tlist_Buffer_Removed
" A buffer is removed from the Vim buffer list. Remove the tags defined
" for that file
function! s:Tlist_Buffer_Removed(filename)
    call s:Tlist_Log_Msg('Tlist_Buffer_Removed (' . a:filename .  ')')

    " Make sure a valid filename is supplied
    if a:filename == ''
        return
    endif

    " Get tag list index of the specified file
    let fidx = s:Tlist_Get_File_Index(a:filename)
    if fidx == -1
        " File not present in the taglist
        return
    endif

    " Remove the file from the list
    call s:Tlist_Remove_File(fidx, 0)
endfunction

" When a buffer is deleted, remove the file from the taglist
autocmd BufDelete * silent call s:Tlist_Buffer_Removed(expand('<afile>:p'))

" Tlist_Window_Open_File_Fold
" Open the fold for the specified file and close the fold for all the
" other files
function! s:Tlist_Window_Open_File_Fold(acmd_bufnr)
    call s:Tlist_Log_Msg('Tlist_Window_Open_File_Fold (' . a:acmd_bufnr . ')')

    " Make sure the taglist window is present
    let winnum = bufwinnr(g:TagList_title)
    if winnum == -1
        call s:Tlist_Warning_Msg('Taglist: Error - Taglist window is not open')
        return
    endif

    " Save the original window number
    let org_winnr = winnr()
    if org_winnr == winnum
        let in_taglist_window = 1
    else
        let in_taglist_window = 0
    endif

    if in_taglist_window
        " When entering the taglist window, no need to update the folds
        return
    endif

    " Go to the taglist window
    if !in_taglist_window
        call s:Tlist_Exe_Cmd_No_Acmds(winnum . 'wincmd w')
    endif

    " Close all the folds
    silent! %foldclose

    " Get tag list index of the specified file
    let fname = fnamemodify(bufname(a:acmd_bufnr + 0), ':p')
    if filereadable(fname)
        let fidx = s:Tlist_Get_File_Index(fname)
        if fidx != -1
            " Open the fold for the file
            exe "silent! " . s:tlist_{fidx}_start . "," .
                        \ s:tlist_{fidx}_end . "foldopen"
        endif
    endif

    " Go back to the original window
    if !in_taglist_window
        call s:Tlist_Exe_Cmd_No_Acmds(org_winnr . 'wincmd w')
    endif
endfunction

" Tlist_Window_Check_Auto_Open
" Open the taglist window automatically on Vim startup.
" Open the window only when files present in any of the Vim windows support
" tags.
function! s:Tlist_Window_Check_Auto_Open()
    let open_window = 0

    let i = 1
    let buf_num = winbufnr(i)
    while buf_num != -1
        let filename = fnamemodify(bufname(buf_num), ':p')
        let ft = s:Tlist_Get_Buffer_Filetype(buf_num)
        if !s:Tlist_Skip_File(filename, ft)
            let open_window = 1
            break
        endif
        let i = i + 1
        let buf_num = winbufnr(i)
    endwhile

    if open_window
        call s:Tlist_Window_Toggle()
    endif
endfunction

" Tlist_Create_Folds_For_File
" Create the folds in the taglist window for the specified file
function! s:Tlist_Create_Folds_For_File(fidx)
    let ftype = s:tlist_{a:fidx}_filetype

    " Create the folds for each tag type in a file
    let j = 1
    while j <= s:tlist_{ftype}_count
        let ttype = s:tlist_{ftype}_{j}_name
        if s:tlist_{a:fidx}_{ttype}_count
            let s = s:tlist_{a:fidx}_start + s:tlist_{a:fidx}_{ttype}_offset
            let e = s + s:tlist_{a:fidx}_{ttype}_count
            exe s . ',' . e . 'fold'
        endif
        let j = j + 1
    endwhile

    exe s:tlist_{a:fidx}_start . ',' . s:tlist_{a:fidx}_end . 'fold'
    exe 'silent! ' . s:tlist_{a:fidx}_start . ',' .
                \ s:tlist_{a:fidx}_end . 'foldopen!'
endfunction

" Tlist_Refresh_Folds
" Remove and create the folds for all the files displayed in the taglist
" window. Used after entering a tab. If this is not done, then the folds
" are not properly created for taglist windows displayed in multiple tabs.
function! s:Tlist_Refresh_Folds()
    let winnum = bufwinnr(g:TagList_title)
    if winnum == -1
        return
    endif

    let save_wnum = winnr()
    exe winnum . 'wincmd w'

    " First remove all the existing folds
    normal! zE

    if g:Tlist_Show_One_File
        " If only one file is displayed in the taglist window, then there
        " is no need to refresh the folds for the tags as the tags for the
        " current file will be removed anyway.
    else
        " Create the folds for each file in the tag list
        let fidx = 0
        while fidx < s:tlist_file_count
            call s:Tlist_Create_Folds_For_File(fidx)
            let fidx = fidx + 1
        endwhile
    endif

    exe save_wnum . 'wincmd w'
endfunction

function! s:Tlist_Menu_Add_Base_Menu()
    call s:Tlist_Log_Msg('Adding the base menu')

    " Add the menu
    anoremenu <silent> T&ags.Refresh\ menu :call <SID>Tlist_Menu_Refresh()<CR>
    anoremenu <silent> T&ags.Sort\ menu\ by.Name
                    \ :call <SID>Tlist_Change_Sort('menu', 'set', 'name')<CR>
    anoremenu <silent> T&ags.Sort\ menu\ by.Order
                    \ :call <SID>Tlist_Change_Sort('menu', 'set', 'order')<CR>
    anoremenu T&ags.-SEP1-           :

    if &mousemodel =~ 'popup'
        anoremenu <silent> PopUp.T&ags.Refresh\ menu
                    \ :call <SID>Tlist_Menu_Refresh()<CR>
        anoremenu <silent> PopUp.T&ags.Sort\ menu\ by.Name
                  \ :call <SID>Tlist_Change_Sort('menu', 'set', 'name')<CR>
        anoremenu <silent> PopUp.T&ags.Sort\ menu\ by.Order
                  \ :call <SID>Tlist_Change_Sort('menu', 'set', 'order')<CR>
        anoremenu PopUp.T&ags.-SEP1-           :
    endif
endfunction

let s:menu_char_prefix =
            \ '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

" Tlist_Menu_Get_Tag_Type_Cmd
" Get the menu command for the specified tag type
" fidx - File type index
" ftype - File Type
" add_ttype_name - To add or not to add the tag type name to the menu entries
" ttype_idx - Tag type index
function! s:Tlist_Menu_Get_Tag_Type_Cmd(fidx, ftype, add_ttype_name, ttype_idx)
    " Curly brace variable name optimization
    let ftype_ttype_idx = a:ftype . '_' . a:ttype_idx

    let ttype = s:tlist_{ftype_ttype_idx}_name
    if a:add_ttype_name
        " If the tag type name contains space characters, escape it. This
        " will be used to create the menu entries.
        let ttype_fullname = escape(s:tlist_{ftype_ttype_idx}_fullname, ' ')
    endif

    " Curly brace variable name optimization
    let fidx_ttype = a:fidx . '_' . ttype

    " Number of tag entries for this tag type
    let tcnt = s:tlist_{fidx_ttype}_count
    if tcnt == 0 " No entries for this tag type
        return ''
    endif

    let mcmd = ''

    " Create the menu items for the tags.
    " Depending on the number of tags of this type, split the menu into
    " multiple sub-menus, if needed.
    if tcnt > g:Tlist_Max_Submenu_Items
        let j = 1
        while j <= tcnt
            let final_index = j + g:Tlist_Max_Submenu_Items - 1
            if final_index > tcnt
                let final_index = tcnt
            endif

            " Extract the first and last tag name and form the
            " sub-menu name
            let tidx = s:tlist_{fidx_ttype}_{j}
            let first_tag = s:tlist_{a:fidx}_{tidx}_tag_name

            let tidx = s:tlist_{fidx_ttype}_{final_index}
            let last_tag = s:tlist_{a:fidx}_{tidx}_tag_name

            " Truncate the names, if they are greater than the
            " max length
            let first_tag = strpart(first_tag, 0, g:Tlist_Max_Tag_Length)
            let last_tag = strpart(last_tag, 0, g:Tlist_Max_Tag_Length)

            " Form the menu command prefix
            let m_prefix = 'anoremenu <silent> T\&ags.'
            if a:add_ttype_name
                let m_prefix = m_prefix . ttype_fullname . '.'
            endif
            let m_prefix = m_prefix . first_tag . '\.\.\.' . last_tag . '.'

            " Character prefix used to number the menu items (hotkey)
            let m_prefix_idx = 0

            while j <= final_index
                let tidx = s:tlist_{fidx_ttype}_{j}

                let tname = s:tlist_{a:fidx}_{tidx}_tag_name

                let mcmd = mcmd . m_prefix . '\&' .
                            \ s:menu_char_prefix[m_prefix_idx] . '\.' .
                            \ tname . ' :call <SID>Tlist_Menu_Jump_To_Tag(' .
                            \ tidx . ')<CR>|'

                let m_prefix_idx = m_prefix_idx + 1
                let j = j + 1
            endwhile
        endwhile
    else
        " Character prefix used to number the menu items (hotkey)
        let m_prefix_idx = 0

        let m_prefix = 'anoremenu <silent> T\&ags.'
        if a:add_ttype_name
            let m_prefix = m_prefix . ttype_fullname . '.'
        endif
        let j = 1
        while j <= tcnt
            let tidx = s:tlist_{fidx_ttype}_{j}

            let tname = s:tlist_{a:fidx}_{tidx}_tag_name

            let mcmd = mcmd . m_prefix . '\&' .
                        \ s:menu_char_prefix[m_prefix_idx] . '\.' .
                        \ tname . ' :call <SID>Tlist_Menu_Jump_To_Tag(' . tidx
                        \ . ')<CR>|'

            let m_prefix_idx = m_prefix_idx + 1
            let j = j + 1
        endwhile
    endif

    return mcmd
endfunction

" Update the taglist menu with the tags for the specified file
function! s:Tlist_Menu_File_Refresh(fidx)
    call s:Tlist_Log_Msg('Refreshing the tag menu for ' . s:tlist_{a:fidx}_filename)
    " The 'B' flag is needed in the 'cpoptions' option
    let old_cpoptions = &cpoptions
    set cpoptions&vim

    exe s:tlist_{a:fidx}_menu_cmd

    " Update the popup menu (if enabled)
    if &mousemodel =~ 'popup'
        let cmd = substitute(s:tlist_{a:fidx}_menu_cmd, ' T\\&ags\.',
                                        \ ' PopUp.T\\\&ags.', "g")
        exe cmd
    endif

    " The taglist menu is not empty now
    let s:tlist_menu_empty = 0

    " Restore the 'cpoptions' settings
    let &cpoptions = old_cpoptions
endfunction

" Tlist_Menu_Update_File
" Add the taglist menu
function! s:Tlist_Menu_Update_File(clear_menu)
    if !has('gui_running')
        " Not running in GUI mode
        return
    endif

    call s:Tlist_Log_Msg('Updating the tag menu, clear_menu = ' . a:clear_menu)

    " Remove the tags menu
    if a:clear_menu
        call s:Tlist_Menu_Remove_File()

    endif

    " Skip buffers with 'buftype' set to nofile, nowrite, quickfix or help
    if &buftype != ''
        return
    endif

    let filename = fnamemodify(bufname('%'), ':p')
    let ftype = s:Tlist_Get_Buffer_Filetype('%')

    " If the file doesn't support tag listing, skip it
    if s:Tlist_Skip_File(filename, ftype)
        return
    endif

    let fidx = s:Tlist_Get_File_Index(filename)
    if fidx == -1 || !s:tlist_{fidx}_valid
        " Check whether this file is removed based on user request
        " If it is, then don't display the tags for this file
        if s:Tlist_User_Removed_File(filename)
            return
        endif

        " Process the tags for the file
        let fidx = s:Tlist_Process_File(filename, ftype)
        if fidx == -1
            return
        endif
    endif

    let fname = escape(fnamemodify(bufname('%'), ':t'), '.')
    if fname != ''
        exe 'anoremenu T&ags.' .  fname . ' <Nop>'
        anoremenu T&ags.-SEP2-           :
    endif

    if !s:tlist_{fidx}_tag_count
        return
    endif

    if s:tlist_{fidx}_menu_cmd != ''
        " Update the menu with the cached command
        call s:Tlist_Menu_File_Refresh(fidx)

        return
    endif

    " We are going to add entries to the tags menu, so the menu won't be
    " empty
    let s:tlist_menu_empty = 0

    let cmd = ''

    " Determine whether the tag type name needs to be added to the menu
    " If more than one tag type is present in the taglisting for a file,
    " then the tag type name needs to be present
    let add_ttype_name = -1
    let i = 1
    while i <= s:tlist_{ftype}_count && add_ttype_name < 1
        let ttype = s:tlist_{ftype}_{i}_name
        if s:tlist_{fidx}_{ttype}_count
            let add_ttype_name = add_ttype_name + 1
        endif
        let i = i + 1
    endwhile

    " Process the tags by the tag type and get the menu command
    let i = 1
    while i <= s:tlist_{ftype}_count
        let mcmd = s:Tlist_Menu_Get_Tag_Type_Cmd(fidx, ftype, add_ttype_name, i)
        if mcmd != ''
            let cmd = cmd . mcmd
        endif

        let i = i + 1
    endwhile

    " Cache the menu command for reuse
    let s:tlist_{fidx}_menu_cmd = cmd

    " Update the menu
    call s:Tlist_Menu_File_Refresh(fidx)
endfunction

" Tlist_Menu_Remove_File
" Remove the tags displayed in the tags menu
function! s:Tlist_Menu_Remove_File()
    if !has('gui_running') || s:tlist_menu_empty
        return
    endif

    call s:Tlist_Log_Msg('Removing the tags menu for a file')

    " Cleanup the Tags menu
    silent! unmenu T&ags
    if &mousemodel =~ 'popup'
        silent! unmenu PopUp.T&ags
    endif

    " Add a dummy menu item to retain teared off menu
    noremenu T&ags.Dummy l

    silent! unmenu! T&ags
    if &mousemodel =~ 'popup'
        silent! unmenu! PopUp.T&ags
    endif

    call s:Tlist_Menu_Add_Base_Menu()

    " Remove the dummy menu item
    unmenu T&ags.Dummy

    let s:tlist_menu_empty = 1
endfunction

" Tlist_Menu_Refresh
" Refresh the taglist menu
function! s:Tlist_Menu_Refresh()
    call s:Tlist_Log_Msg('Refreshing the tags menu')
    let fidx = s:Tlist_Get_File_Index(fnamemodify(bufname('%'), ':p'))
    if fidx != -1
        " Invalidate the cached menu command
        let s:tlist_{fidx}_menu_cmd = ''
    endif

    " Update the taglist, menu and window
    call s:Tlist_Update_Current_File()
endfunction

" Tlist_Menu_Jump_To_Tag
" Jump to the selected tag
function! s:Tlist_Menu_Jump_To_Tag(tidx)
    let fidx = s:Tlist_Get_File_Index(fnamemodify(bufname('%'), ':p'))
    if fidx == -1
        return
    endif

    let tagpat = s:Tlist_Get_Tag_SearchPat(fidx, a:tidx)
    if tagpat == ''
        return
    endif

    " Add the current cursor position to the jump list, so that user can
    " jump back using the ' and ` marks.
    mark '

    silent call search(tagpat, 'w')

    " Bring the line to the middle of the window
    normal! z.

    " If the line is inside a fold, open the fold
    if foldclosed('.') != -1
        .foldopen
    endif
endfunction

" Tlist_Menu_Init
" Initialize the taglist menu
function! s:Tlist_Menu_Init()
    call s:Tlist_Menu_Add_Base_Menu()

    " Automatically add the tags defined in the current file to the menu
    augroup TagListMenuCmds
        autocmd!

        if !g:Tlist_Process_File_Always
            autocmd BufEnter * call s:Tlist_Refresh()
        endif
        autocmd BufLeave * call s:Tlist_Menu_Remove_File()
    augroup end

    call s:Tlist_Menu_Update_File(0)
endfunction

" Tlist_Vim_Session_Load
" Initialize the taglist window/buffer, which is created when loading
" a Vim session file.
function! s:Tlist_Vim_Session_Load()
    call s:Tlist_Log_Msg('Tlist_Vim_Session_Load')

    " Initialize the taglist window
    call s:Tlist_Window_Init()

    " Refresh the taglist window
    call s:Tlist_Window_Refresh()
endfunction

" Tlist_Set_App
" Set the name of the external plugin/application to which taglist
" belongs.
" Taglist plugin is part of another plugin like cream or winmanager.
function! Tlist_Set_App(name)
    if a:name == ""
        return
    endif

    let s:tlist_app_name = a:name
endfunction

" Winmanager integration

" Initialization required for integration with winmanager
function! TagList_Start()
    " If current buffer is not taglist buffer, then don't proceed
    if bufname('%') != '__Tag_List__'
        return
    endif

    call Tlist_Set_App('winmanager')

    " Get the current filename from the winmanager plugin
    let bufnum = WinManagerGetLastEditedFile()
    if bufnum != -1
        let filename = fnamemodify(bufname(bufnum), ':p')
        let ftype = s:Tlist_Get_Buffer_Filetype(bufnum)
    endif

    " Initialize the taglist window, if it is not already initialized
    if !exists('s:tlist_window_initialized') || !s:tlist_window_initialized
        call s:Tlist_Window_Init()
        call s:Tlist_Window_Refresh()
        let s:tlist_window_initialized = 1
    endif

    " Update the taglist window
    if bufnum != -1
        if !s:Tlist_Skip_File(filename, ftype) && g:Tlist_Auto_Update
            call s:Tlist_Window_Refresh_File(filename, ftype)
        endif
    endif
endfunction

function! TagList_IsValid()
    return 0
endfunction

function! TagList_WrapUp()
    return 0
endfunction

" restore 'cpo'
let &cpo = s:cpo_save
unlet s:cpo_save

                                                                                                                                                                                                                                                                                                                                              plugin/srcexpl.vim                                                                                  0000664 0001750 0001750 00000134773 12401543477 015277  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
" Plugin Name: SrcExpl (Source Explorer)                                       "
" Abstract:    A (G)Vim plugin for exploring the source code based on "tags",  "
"              and it works like the context window of "Source Insight".       "
" Authors:     Wenlong Che <wenlong.che@gmail.com>                             "
"              Jonathan Lai <laiks.jonathan@gmail.com>                         "
" Homepage:    http://www.vim.org/scripts/script.php?script_id=2179            "
" GitHub:      https://github.com/wesleyche/SrcExpl                            "
" Version:     5.3                                                             "
" Last Change: September 10th, 2013                                            "
" Licence:     This program is free software; you can redistribute it and / or "
"              modify it under the terms of the GNU General Public License as  "
"              published by the Free Software Foundation; either version 2, or "
"              any later version.                                              "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NOTE: Below graph shows my work platform with some Vim plugins,              "
"       including 'Source Explorer', 'Taglist' and 'NERD tree'. And I usually  "
"       use my another plugin called 'trinity.vim' to manage them.             "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" +----------------------------------------------------------------------------+
" | File  Edit  Tools  Syntax  Buffers  Window  Help                           |
" +----------------+-----------------------------------------+-----------------+
" |-demo.c---------|                                         |-/home/myprj/----|
" |function        | 1 void foo(void)     /* function 1 */   ||~ src/          |
" |  foo           | 2 {                                     || `-demo.c       |
" |  bar           | 3 }                                     |`-tags           |
" |                | 4 void bar(void)     /* function 2 */   |                 |
" |~ .----------.  | 5 {                                     |~ .-----------.  |
" |~ | Tag List |\ | 6 }        .-------------.              |~ | NERD Tree |\ |
" |~ .----------. ||~           | Edit Window |\             |~ .-----------. ||
" |~ \___________\||~           .-------------. |            |~ \____________\||
" |~               |~           \______________\|            |~                |
" +-__Tag_List__---+-demo.c----------------------------------+-_NERD_tree_-----+
" |Source Explorer v5.3           .-----------------.                          |
" |~                              | Source Explorer |\                         |
" |~                              .-----------------. |                        |
" |~                              \__________________\|                        |
" |-Source_Explorer------------------------------------------------------------|
" |:TrinityToggleAll                                                           |
" +----------------------------------------------------------------------------+

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
" The_setting_example_in_my_vimrc_file:-)                                      "
"                                                                              "
" // The switch of the Source Explorer                                         "
" nmap <F8> :SrcExplToggle<CR>
"                                                                              "
" // Set the height of Source Explorer window                                  "
" let g:SrcExpl_winHeight = 8
"                                                                              "
" // Set 100 ms for refreshing the Source Explorer                             "
" let g:SrcExpl_refreshTime = 100
"                                                                              "
" // Set "Enter" key to jump into the exact definition context                 "
" let g:SrcExpl_jumpKey = "<ENTER>"
"                                                                              "
" // Set "Space" key for back from the definition context                      "
" let g:SrcExpl_gobackKey = "<SPACE>"
"                                                                              "
" // In order to avoid conflicts, the Source Explorer should know what plugins "
" // except itself are using buffers. And you need add their buffer names into "
" // below listaccording to the command ":buffers!"                            "
" let g:SrcExpl_pluginList = [
"         \ "__Tag_List__",
"         \ "_NERD_tree_"
"     \ ]
"                                                                              "
" // Enable/Disable the local definition searching, and note that this is not  "
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. "
" // It only searches for a match with the keyword according to command 'gd'   "
" let g:SrcExpl_searchLocalDef = 1
"                                                                              "
" // Do not let the Source Explorer update the tags file when opening          "
" let g:SrcExpl_isUpdateTags = 0
"                                                                              "
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to "
" //  create/update a tags file                                                "
" let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"                                                                              "
" // Set "<F12>" key for updating the tags file artificially                   "
" let g:SrcExpl_updateTagsKey = "<F12>"
"                                                                              "
" // Set "<F3>" key for displaying the previous definition in the jump list    "
" let g:SrcExpl_prevDefKey = "<F3>"
"                                                                              "
" // Set "<F4>" key for displaying the next definition in the jump list        "
" let g:SrcExpl_nextDefKey = "<F4>"
"                                                                              "
" Just_change_above_of_them_by_yourself:-)                                     "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Avoid reloading {{{

if exists('loaded_srcexpl')
    finish
endif

let loaded_srcexpl = 1
let s:save_cpo = &cpoptions

" }}}

" Vim version control {{{

" The Vim version control for running the Source Explorer

if v:version < 700
    echohl ErrorMsg
        echo "Require Vim 7.0 or above for running the Source Explorer."
    echohl None
    finish
endif

set cpoptions&vim

" }}}

" User interfaces {{{

" User interface for opening the Source Explorer

command! -nargs=0 -bar SrcExpl
    \ call <SID>SrcExpl()

" User interface for closing the Source Explorer

command! -nargs=0 -bar SrcExplClose
    \ call <SID>SrcExpl_Close()

" User interface for switching the Source Explorer

command! -nargs=0 -bar SrcExplToggle
    \ call <SID>SrcExpl_Toggle()

" User interface for changing the height of the Source Explorer window
if !exists('g:SrcExpl_winHeight')
    let g:SrcExpl_winHeight = 8
endif

" User interface for setting the update time interval for each refreshing
if !exists('g:SrcExpl_refreshTime')
    let g:SrcExpl_refreshTime = 100
endif

" User interface to jump into the exact definition context
if !exists('g:SrcExpl_jumpKey')
    let g:SrcExpl_jumpKey = '<CR>'
endif

" User interface to go back from the definition context
if !exists('g:SrcExpl_gobackKey')
    let g:SrcExpl_gobackKey = '<SPACE>'
endif

" User interface for handling the conflicts between the
" Source Explorer and other plugins
if !exists('g:SrcExpl_pluginList')
    let g:SrcExpl_pluginList = [
            \ "__Tag_List__",
            \ "_NERD_tree_"
        \ ]
endif

" User interface to enable local declaration searching
" according to command 'gd'
if !exists('g:SrcExpl_searchLocalDef')
    let g:SrcExpl_searchLocalDef = 1
endif

" User interface to control if update the 'tags' file when loading
" the Source Explorer, 0 for false, others for true
if !exists('g:SrcExpl_isUpdateTags')
    let g:SrcExpl_isUpdateTags = 1
endif

" User interface to create a 'tags' file using exact ctags
" utility, 'ctags --sort=foldcase -R .' as default
if !exists('g:SrcExpl_updateTagsCmd')
    let g:SrcExpl_updateTagsCmd = 'ctags --sort=foldcase -R .'
endif

" User interface to update tags file artificially
if !exists('g:SrcExpl_updateTagsKey')
    let g:SrcExpl_updateTagsKey = ''
endif

" User interface to display the previous definition in the jump list
if !exists('g:SrcExpl_prevDefKey')
    let g:SrcExpl_prevDefKey = ''
endif

" User interface to display the next definition in the jump list
if !exists('g:SrcExpl_nextDefKey')
    let g:SrcExpl_nextDefKey = ''
endif

" }}}

" Global variables {{{

" Mark list
let g:SrcExpl_markList = []

" Plugin name
let s:SrcExpl_pluginName = 'Source Explorer'

" Plugin version
let s:SrcExpl_pluginVer = 5.3

" Buffer name
let s:SrcExpl_bufName = 'Source_Explorer'

" Window name
let s:SrcExpl_winName = 'SrcExpl'

" Window variable
let s:SrcExpl_winVar = -1

" Debugging log path
let s:SrcExpl_logPath = '~/srcexpl.log'

" Debugging switch
let s:SrcExpl_isDebug = 0

" Runing switch flag
let s:SrcExpl_isRunning = 0

" Set the highlight color
hi SrcExpl_HighLight term=bold guifg=Black guibg=Magenta ctermfg=Black ctermbg=Magenta

" }}}

" SrcExpl_PrevDef() {{{

" Display the previous definition in the jump list

function! g:SrcExpl_PrevDef()

    call <SID>SrcExpl_JumpDef(1)

endfunction " }}}

" SrcExpl_NextDef() {{{

" Display the next definition in the jump list

function! g:SrcExpl_NextDef()

    call <SID>SrcExpl_JumpDef(2)

endfunction " }}}

" SrcExpl_GetVer() {{{

" Gets the Source Explorer version

function! g:SrcExpl_GetVer()

    return s:SrcExpl_pluginVer

endfunction " }}}

" SrcExpl_GetWin() {{{

" Gets the Source Explorer window number (> 0), and

" -1 means the Source Explorer window had been closed

function! g:SrcExpl_GetWin()

    if getwinvar(s:SrcExpl_winVar, s:SrcExpl_winName) == 1
        return s:SrcExpl_winVar
    endif

    let srcexpl_win = -1
    let i = 0

    while i < winnr("$")
        let i = i + 1
        if getwinvar(i, s:SrcExpl_winName) == 1
            let srcexpl_win = i
            break
        endif
    endwhile

    let s:SrcExpl_winVar = srcexpl_win
    " call <SID>SrcExpl_Debug("s:SrcExpl_winVar is ". s:SrcExpl_winVar)
    return srcexpl_win

endfunction " }}}

" SrcExpl_UpdateTags() {{{

" Update tags file with the 'ctags' utility

function! g:SrcExpl_UpdateTags()

    " Go to the current work directory
    silent! exe "cd " . expand('%:p:h')
    " Get the amount of all files named 'tags'
    let l:tmp = len(tagfiles())

    " No tags file or not found one
    if l:tmp == 0
        " Ask user if or not create a tags file
        echohl Question
            \ | let l:tmp = <SID>SrcExpl_GetInput("\nSrcExpl: "
                \ . "The 'tags' file was not found in your PATH.\n"
            \ . "Create one in the current directory now? (y)es/(n)o?") |
        echohl None
        " They do
        if l:tmp == "y" || l:tmp == "yes"
            " We tell user where we create a tags file
            echohl Question
                echo "SrcExpl: Creating 'tags' file in (". expand('%:p:h') . ")"
            echohl None
            " Call the external 'ctags' utility program
            exe "!" . g:SrcExpl_updateTagsCmd
            " Rejudge the tags file if existed
            if !filereadable("tags")
                " Tell them what happened
                call <SID>SrcExpl_ReportErr("Execute 'ctags' utility program failed")
                return -1
            endif
        " They don't
        else
            echo ""
            return -2
        endif
    " More than one tags file
    elseif l:tmp > 1
        call <SID>SrcExpl_ReportErr("More than one tags file in your PATH")
        return -3
    " Found one successfully
    else
        " Is the tags file in the current directory ?
        if tagfiles()[0] ==# "tags"
            " Prompt the current work directory
            echohl Question
                echo "SrcExpl: Updating 'tags' file in (". expand('%:p:h') . ")"
            echohl None
            " Call the external 'ctags' utility program
            exe "!" . g:SrcExpl_updateTagsCmd
        " Up to other directories
        else
            " Prompt the whole path of the tags file
            echohl Question
                echo "SrcExpl: Updating 'tags' file in (". tagfiles()[0][:-6] . ")"
            echohl None
            " Store the current word directory at first
            let l:tmp = getcwd()
            " Go to the directory that contains the old tags file
            silent! exe "cd " . tagfiles()[0][:-5]
            " Call the external 'ctags' utility program
            exe "!" . g:SrcExpl_updateTagsCmd
           " Go back to the original work directory
           silent! exe "cd " . l:tmp
        endif
    endif

    return 0

endfunction " }}}

" SrcExpl_GoBack() {{{

" Move the cursor to the previous location according to the mark history

function! g:SrcExpl_GoBack()

    " If the cursor is not in the edit window
    if <SID>SrcExpl_WinActive() || <SID>SrcExpl_AdaptPlugins()
        return -1
    endif

    " Just go back to the previous position
    return <SID>SrcExpl_GetMarkList()

endfunction " }}}

" SrcExpl_Jump() {{{

" Jump to the edit window and point to the definition

function! g:SrcExpl_Jump()

    " Only do the operation on the Source Explorer window is valid
    if !<SID>SrcExpl_WinActive()
        return -1
    endif

    " Do we get the definition already?
    if bufname("%") == s:SrcExpl_bufName
        " No such definition
        if s:SrcExpl_status == 0
            return -2
        " Multiple definitions
        elseif s:SrcExpl_status == 2
            " If point to the jump list head, just avoid that
            if line(".") == 1
                return -3
            endif
        endif
    endif

    " Do not refresh when jumping to the edit window
    if g:SrcExpl_searchLocalDef != 0
        let s:SrcExpl_isJumped = 1
    endif
    " Indeed go back to the edit window
    silent! exe s:SrcExpl_editWin . "wincmd w"
    " Set the mark for recording the current position
    call <SID>SrcExpl_SetMarkList()

    " We got multiple definitions
    if s:SrcExpl_status == 2
        " Select the exact one and jump to its context
        call <SID>SrcExpl_SelToJump(0)
        " Set the mark for recording the current position
        call <SID>SrcExpl_SetMarkList()
        return 0
    endif

    " Open the buffer using edit window
    exe "edit " . s:SrcExpl_currMark[0]
    " Jump to the context line of that symbol
    call cursor(s:SrcExpl_currMark[1], s:SrcExpl_currMark[2])
    " Match the symbol of definition
    call <SID>SrcExpl_MatchExpr()
    " Set the mark for recording the current position
    call <SID>SrcExpl_SetMarkList()

    " We got one local definition
    if s:SrcExpl_status == 3
        " Get the cursor line number
        let s:SrcExpl_csrLine = line(".")
        " Try to tag the symbol again
        let l:expr = '\<' . s:SrcExpl_symbol . '\>' . '\C'
        " Try to tag something
        call <SID>SrcExpl_TagSth(l:expr)
    endif

    return 0

endfunction " }}}

" SrcExpl_Refresh() {{{

" Refresh the Source Explorer window and update the status

function! g:SrcExpl_Refresh()

    " Tab page must be invalid
    if s:SrcExpl_tabPage != tabpagenr()
        return -1
    endif

    " If the cursor is not in the edit window
    if <SID>SrcExpl_WinActive() || <SID>SrcExpl_AdaptPlugins()
        return -2
    endif

    " Avoid errors of multi-buffers
    if &modified
        call <SID>SrcExpl_ReportErr("This modified file is not saved")
        return -3
    endif

    " Get the edit window number
    let s:SrcExpl_editWin = winnr()

    " Get the symbol under the cursor
    if <SID>SrcExpl_GetSymbol()
        return -4
    endif

    let l:expr = '\<' . s:SrcExpl_symbol . '\>' . '\C'

    " Try to Go to local declaration
    if g:SrcExpl_searchLocalDef != 0
        if !<SID>SrcExpl_GoDecl(l:expr)
            let s:SrcExpl_lastSymbol = s:SrcExpl_symbol
            return 0
        endif
    endif

    " Try to tag something when necessary
    if s:SrcExpl_symbol !=# s:SrcExpl_lastSymbol || s:SrcExpl_lastSymbol ==# ""
        call <SID>SrcExpl_TagSth(l:expr)
        let s:SrcExpl_lastSymbol = s:SrcExpl_symbol
    endif

    return 0

endfunction " }}}

" SrcExpl_JumpDef() {{{

" Display the previous or next definition in the jump list

function! <SID>SrcExpl_JumpDef(dir)

    " Multiple definitions
    if s:SrcExpl_status == 2
        " Do not refresh when jumping to the edit window
        if g:SrcExpl_searchLocalDef != 0
            let s:SrcExpl_isJumped = 1
        endif
        " Indeed go back to the edit window
        silent! exe s:SrcExpl_editWin . "wincmd w"
        " Set the mark for recording the current position
        call <SID>SrcExpl_SetMarkList()
        " Select the exact one and jump to its context
        call <SID>SrcExpl_SelToJump(a:dir)
        " Set the mark for recording the current position
        call <SID>SrcExpl_SetMarkList()
    " One definition or local definition
    elseif s:SrcExpl_status == 1 || s:SrcExpl_status == 3
        call <SID>SrcExpl_ReportErr("No more definitions")
    endif

endfunction " }}}

" SrcExpl_Debug() {{{

" Log the supplied debug information along with the time

function! <SID>SrcExpl_Debug(log)

    " Debug switch is on
    if s:SrcExpl_isDebug == 1
        " Log file path is valid
        if s:SrcExpl_logPath != ''
            " Output to the log file
            exe "redir >> " . s:SrcExpl_logPath
            " Add the current time
            silent echon strftime("%H:%M:%S") . ": " . a:log . "\r\n"
            redir END
        endif
    endif

endfunction " }}}

" SrcExpl_WinGo() {{{

" Goes to the Source Explorer window

function! <SID>SrcExpl_WinGo()

    let srcexpl_win = g:SrcExpl_GetWin()
    if srcexpl_win == -1
        let srcexpl_win = bufwinnr(s:SrcExpl_bufName)
        if srcexpl_win == -1
            return 0
        endif
    endif

    exe 'silent! ' . srcexpl_win . 'wincmd w'

    return 1

endfunction " }}}

" SrcExpl_WinNew() {{{

" Opens the Source Explorer window
function! <SID>SrcExpl_WinNew(wincmd)

    let srcexpl_win = g:SrcExpl_GetWin()
    if srcexpl_win != -1
        return 0
    endif

    exe 'silent! botright ' . string(g:SrcExpl_winHeight) . 'split ' . a:wincmd
    let srcexpl_win = winnr("$")
    call setwinvar(srcexpl_win, s:SrcExpl_winName, 1)
    let s:SrcExpl_Window = srcexpl_win
    " Keep the height of Source Explorer window although it could be resized
    exe 'set winfixheight'
    return 1

endfunction "  }}}

" SrcExpl_WinEdit() {{{

" Edits the Source Explorer window

function! <SID>SrcExpl_WinEdit(wincmd)

    if <SID>SrcExpl_WinGo() == 0
       call <SID>SrcExpl_WinNew(a:wincmd)
    endif

    exe 'silent! edit ' . a:wincmd
    return 1

endfunction " }}}

" SrcExpl_WinActive() {{{

" Returns if on the Source Explorer window

function! <SID>SrcExpl_WinActive()

    if getwinvar(0, s:SrcExpl_winName) == 1
        return 1
    endif
    return 0

endfunction " }}}

" SrcExpl_WinDelete() {{{

" Closes the Source Explorer window

function! <SID>SrcExpl_WinDelete()

    if <SID>SrcExpl_WinGo() == 0
        return 0
    endif

    exe 'silent! close'
    return 1

endfunction " }}}

" SrcExpl_WinPrompt() {{{

" Tell users there is no tag found in their PATH

function! <SID>SrcExpl_WinPrompt(prompt)

    " Do the Source Explorer existed already?
    let l:bufnum = bufnr(s:SrcExpl_bufName)
    " Not existed, create a new buffer
    if l:bufnum == -1
        " Create a new buffer
        let l:wcmd = s:SrcExpl_bufName
    else
        " Edit the existing buffer
        let l:wcmd = '+buffer' . l:bufnum
    endif

    " Reopen the Source Explorer idle window
    call <SID>SrcExpl_WinEdit(l:wcmd)
    " Done
    if <SID>SrcExpl_WinActive()
        " First make it modifiable
        setlocal modifiable
        " Not show its name on the buffer list
        setlocal nobuflisted
        " No exact file
        setlocal buftype=nofile
        " Report the reason why the Source Explorer
        " can not point to the definition
        " Delete all lines in buffer.
        1,$d _
        " Go to the end of the buffer put the buffer list
        $
        " Display the version of the Source Explorer
        put! = a:prompt
        " Cancel all the highlighted words
        match none
        " Delete the extra trailing blank line
        $ d _
        " Make it unmodifiable again
        setlocal nomodifiable
        " Go back to the edit window
        silent! exe s:SrcExpl_editWin . "wincmd w"
    endif

endfunction " }}}

" SrcExpl_WinEnter() {{{

" Operation when 'WinEnter' event happens

function! <SID>SrcExpl_WinEnter()

    " In the Source Explorer window
    if <SID>SrcExpl_WinActive()
        if has("gui_running")
            " Delete the SrcExplGoBack item in Popup menu
            silent! nunmenu 1.01 PopUp.&SrcExplGoBack
        endif
        " Unmap the go-back key
        if maparg(g:SrcExpl_gobackKey, 'n') ==
            \ ":call g:SrcExpl_GoBack()<CR>"
            exe "nunmap " . g:SrcExpl_gobackKey
        endif
        " Do the mapping for 'double-click'
        if maparg('<2-LeftMouse>', 'n') == ''
            nnoremap <silent> <2-LeftMouse>
                \ :call g:SrcExpl_Jump()<CR>
        endif
        " Map the user's key to jump into the exact definition context
        if g:SrcExpl_jumpKey != ""
            exe "nnoremap " . g:SrcExpl_jumpKey .
                \ " :call g:SrcExpl_Jump()<CR>"
        endif
    " In other plugin windows
    elseif <SID>SrcExpl_AdaptPlugins()
        if has("gui_running")
            " Delete the SrcExplGoBack item in Popup menu
            silent! nunmenu 1.01 PopUp.&SrcExplGoBack
        endif
        " Unmap the go-back key
        if maparg(g:SrcExpl_gobackKey, 'n') ==
            \ ":call g:SrcExpl_GoBack()<CR>"
            exe "nunmap " . g:SrcExpl_gobackKey
        endif
        " Unmap the exact mapping of 'double-click'
        if maparg("<2-LeftMouse>", "n") ==
                \ ":call g:SrcExpl_Jump()<CR>"
            nunmap <silent> <2-LeftMouse>
        endif
        " Unmap the jump key
        if maparg(g:SrcExpl_jumpKey, 'n') ==
            \ ":call g:SrcExpl_Jump()<CR>"
            exe "nunmap " . g:SrcExpl_jumpKey
        endif
    " In the edit window
    else
        if has("gui_running")
            " You can use SrcExplGoBack item in Popup menu
            " to go back from the definition
            silent! nnoremenu 1.01 PopUp.&SrcExplGoBack
                \ :call g:SrcExpl_GoBack()<CR>
        endif
        " Map the user's key to go back from the definition context
        if g:SrcExpl_gobackKey != ""
            exe "nnoremap " . g:SrcExpl_gobackKey .
                \ " :call g:SrcExpl_GoBack()<CR>"
        endif
        " Unmap the exact mapping of 'double-click'
        if maparg("<2-LeftMouse>", "n") ==
                \ ":call g:SrcExpl_Jump()<CR>"
            nunmap <silent> <2-LeftMouse>
        endif
        " Unmap the jump key
        if maparg(g:SrcExpl_jumpKey, 'n') ==
            \ ":call g:SrcExpl_Jump()<CR>"
            exe "nunmap " . g:SrcExpl_jumpKey
        endif
    endif

endfunction " }}}

" SrcExpl_WinClose() {{{

" Close the Source Explorer window

function! <SID>SrcExpl_WinClose()

    call <SID>SrcExpl_WinDelete()

endfunction " }}}

" SrcExpl_WinOpen() {{{

" Open the Source Explorer window under the bottom of Vim,
" and set the buffer's attribute of the Source Explorer

function! <SID>SrcExpl_WinOpen()

    " Get the edit window number
    let s:SrcExpl_editWin = winnr()

    " Get the tab page number
    let s:SrcExpl_tabPage = tabpagenr()

    " Prompt the plugin name and its version
    call <SID>SrcExpl_WinPrompt(s:SrcExpl_pluginName . ' v' . string(s:SrcExpl_pluginVer))

endfunction " }}}

" SrcExpl_AdaptPlugins() {{{

" The Source Explorer window will not work when the cursor on the

" window of other plugins, such as 'Taglist', 'NERD tree' etc.

function! <SID>SrcExpl_AdaptPlugins()

    " Traversal the list of other plugins
    for item in g:SrcExpl_pluginList
        " If they acted as a split window
        if bufname("%") ==# item
            " Just avoid this operation
            return -1
        endif
    endfor

    " Aslo filter the Quickfix window
    if &buftype ==# "quickfix"
        return 0
    endif

    " Safe
    return 0

endfunction " }}}

" SrcExpl_ReportErr() {{{

" Output the message when we get an error situation

function! <SID>SrcExpl_ReportErr(err)

    " Highlight the error prompt
    echohl ErrorMsg
        echo "SrcExpl: " . a:err
    echohl None

endfunction " }}}

" SrcExpl_SetMarkList() {{{

" Set a new mark for back to the previous position

function! <SID>SrcExpl_SetMarkList()

    " Add one new mark into the tail of Mark List
    call add(g:SrcExpl_markList, [expand("%:p"), line("."), col(".")])

endfunction " }}}

" SrcExpl_GetMarkList() {{{

" Get the mark for back to the previous position

function! <SID>SrcExpl_GetMarkList()

    " If or not the mark list is empty
    if !len(g:SrcExpl_markList)
        call <SID>SrcExpl_ReportErr("Mark stack is empty")
        return -1
    endif

    " Avoid the same situation
    if get(g:SrcExpl_markList, -1)[0] == expand("%:p")
      \ && get(g:SrcExpl_markList, -1)[1] == line(".")
      \ && get(g:SrcExpl_markList, -1)[2] == col(".")
        " Remove the latest mark
        call remove(g:SrcExpl_markList, -1)
        " Get the latest mark again
        return <SID>SrcExpl_GetMarkList()
    endif

    " Load the buffer content into the edit window
    exe "edit " . get(g:SrcExpl_markList, -1)[0]
    " Jump to the context position of that symbol
    call cursor(get(g:SrcExpl_markList, -1)[1], get(g:SrcExpl_markList, -1)[2])
    " Remove the latest mark now
    call remove(g:SrcExpl_markList, -1)

    return 0

endfunction " }}}

" SrcExpl_SelToJump() {{{

" Select one of multi-definitions, and jump to there

function! <SID>SrcExpl_SelToJump(dir)

    let l:error = 0
    let l:index = 0
    let l:fpath = ""
    let l:excmd = ""
    let l:expr  = ""

    " If or not in the Source Explorer window
    if !<SID>SrcExpl_WinActive()
        call <SID>SrcExpl_WinGo()
    endif

    if a:dir == 1 " Pref def
        if line(".") <= 2 " Prompt
            let l:error = 1
            call cursor(1, 1)
            call <SID>SrcExpl_MatchExpr()
            call <SID>SrcExpl_ColorExpr()
        else " Jump list
            call cursor(line(".") - 1, 1)
            let l:list = getline(".")
        endif
    elseif a:dir == 2 " Next def
        let l:temp = line(".") + 1
        if line(".") == 1 " Prompt
            call cursor(l:temp, 1)
            let l:list = getline(".")
        else " Jump list
            call cursor(l:temp, 1)
            if l:temp == line(".")
                let l:list = getline(".")
            else " Exceed the defs' max
                let l:error = 2
            endif
        endif
    else " Normal click
        let l:list = getline(".")
    endif

    if l:error != 0 " Invalid
        silent! exe s:SrcExpl_editWin . "wincmd w"
        call <SID>SrcExpl_ReportErr("No more definitions")
        return
    else " Go ahead
        call <SID>SrcExpl_ColorLine()
    endif

    " Traverse the prompt string until get the file path
    while !((l:list[l:index] == ']')
      \ && (l:list[l:index + 1] == ':'))
        let l:index += 1
    endwhile
    " Offset
    let l:index += 3

    " Get the whole file path of the exact definition
    while !((l:list[l:index] == ' ')
      \ && (l:list[l:index + 1] == '['))
        let l:fpath = l:fpath . l:list[l:index]
        let l:index += 1
    endwhile
    " Offset
    let l:index += 2

    " Traverse the prompt string until get the symbol
    while !((l:list[l:index] == ']')
      \ && (l:list[l:index + 1] == ':'))
        let l:index += 1
    endwhile
    " Offset
    let l:index += 3

    " Get the Ex command string
    while l:list[l:index] != ''
        let l:excmd = l:excmd . l:list[l:index]
        let l:index += 1
    endwhile

    " Indeed go back to the edit window
    silent! exe s:SrcExpl_editWin . "wincmd w"
    " Open the file containing the definition context
    exe "edit " . l:fpath

    " Modify the Ex Command to locate the tag exactly
    let l:expr = substitute(l:excmd, '/^', '/^\\C', 'g')
    let l:expr = substitute(l:expr,  '\*',  '\\\*', 'g')
    let l:expr = substitute(l:expr,  '\[',  '\\\[', 'g')
    let l:expr = substitute(l:expr,  '\]',  '\\\]', 'g')
    " Use Ex Command to jump to the exact position of the definition
    silent! exe l:expr

    " Match the symbol
    call <SID>SrcExpl_MatchExpr()

endfunction " }}}

" SrcExpl_SetCurrMark() {{{

" Save the current buf-win file path, line number and column number

function! <SID>SrcExpl_SetCurrMark()

    " Store the curretn position for exploring
    let s:SrcExpl_currMark = [expand("%:p"), line("."), col(".")]

endfunction " }}}

" SrcExpl_ColorLine() {{{

" Highlight current line

function! <SID>SrcExpl_ColorLine()

    " Highlight this
    exe 'match SrcExpl_HighLight /.\%' . line(".") . 'l/'
    redraw

endfunction " }}}

" SrcExpl_ColorExpr() {{{

" Highlight the symbol of definition

function! <SID>SrcExpl_ColorExpr()

    " Highlight this
    exe 'match SrcExpl_HighLight "\%' . line(".") . 'l\%' .
        \ col(".") . 'c\k*"'

endfunction " }}}

" SrcExpl_MatchExpr() {{{

" Match the symbol of definition

function! <SID>SrcExpl_MatchExpr()

    call search("$", "b")
    let s:SrcExpl_symbol = substitute(s:SrcExpl_symbol,
        \ '\\', '\\\\', '')
    call search('\<' . s:SrcExpl_symbol . '\>' . '\C')

endfunction " }}}

" SrcExpl_ListMultiDefs() {{{

" List multiple definitions into the Source Explorer active window

function! <SID>SrcExpl_ListMultiDefs(list, len)

    " The Source Explorer existed already ?
    let l:bufnum = bufnr(s:SrcExpl_bufName)
    " Not existed, create a new buffer
    if l:bufnum == -1
        " Create a new buffer
        let l:wcmd = s:SrcExpl_bufName
    else
        " Edit the existing buffer
        let l:wcmd = '+buffer' . l:bufnum
    endif

    " Is the tags file in the current directory ?
    if tagfiles()[0] ==# "tags"
        " We'll get the operating system environment
        " in order to judge the slash type
        if s:SrcExpl_isWinOS == 1
            " With the backward slash
            let l:path = expand('%:p:h') . '\'
        else
            " With the forward slash
            let l:path = expand('%:p:h') . '/'
        endif
    else
        let l:path = ''
    endif

    " Reopen the Source Explorer idle window
    call <SID>SrcExpl_WinEdit(l:wcmd)
    " Done
    if <SID>SrcExpl_WinActive()
        " Reset the attribute of the Source Explorer
        setlocal modifiable
        " Not show its name on the buffer list
        setlocal nobuflisted
        " No exact file
        setlocal buftype=nofile
        " Delete all lines in buffer
        1,$d _
        " Get the tags dictionary array
        " Begin build the jump list for exploring the tags
        put! = '[Jump List]: '. s:SrcExpl_symbol . ' (' . a:len . ') '
        " Match the symbol
        call <SID>SrcExpl_MatchExpr()
        " Highlight the symbol
        call <SID>SrcExpl_ColorExpr()
        " Loop key & index
        let l:indx = 0
        " Loop for listing each tag from tags file
        while 1
            " First get each tag list
            let l:dict = get(a:list, l:indx, {})
            " There is one tag
            if l:dict != {}
                " Go to the end of the buffer put the buffer list
                $
                " We should avoid the './' or '.\' in the whole file path
                if l:dict['filename'][0] == '.'
                    put! ='[File Path]: ' . l:path . l:dict['filename'][2:]
                        \ . ' ' . '[Ex Command]: ' . l:dict['cmd']
                else
                    " Generated by 'ctags --sort=foldcase -R .'
                    if len(l:path) == 0
                        put! ='[File Path]: ' . l:path . l:dict['filename']
                            \ . ' ' . '[Ex Command]: ' . l:dict['cmd']
                    " Generated by 'ctags -L cscope.files'
                    else
                        put! ='[File Path]: ' . l:dict['filename']
                            \ . ' ' . '[Ex Command]: ' . l:dict['cmd']
                    endif
                endif
            " Traversal finished
            else
                break
            endif
            let l:indx += 1
        endwhile
    endif

    " Delete the extra trailing blank line
    $ d _
    " Move the cursor to the top of the Source Explorer window
    exe "normal! " . "gg"
    " Back to the first line
    setlocal nomodifiable
    " Go back to the edit window
    silent! exe s:SrcExpl_editWin . "wincmd w"

endfunction " }}}

" SrcExpl_ViewOneDef() {{{

" Display the definition of the symbol into the Source Explorer active window

function! <SID>SrcExpl_ViewOneDef(fpath, excmd)

    let l:expr = ""

    " The tags file is in the current directory and it
    " should be generated by 'ctags --sort=foldcase -R .'
    if tagfiles()[0] ==# "tags" && a:fpath[0] == '.'
        call <SID>SrcExpl_WinEdit(expand('%:p:h') . '/' . a:fpath)
    " Up to other directories
    else
        call <SID>SrcExpl_WinEdit(a:fpath)
    endif

    " Indeed back to the Source Explorer active window
    if <SID>SrcExpl_WinActive()
        " Modify the Ex Command to locate the tag exactly
        let l:expr = substitute(a:excmd, '/^', '/^\\C', 'g')
        let l:expr = substitute(l:expr,  '\*',  '\\\*', 'g')
        let l:expr = substitute(l:expr,  '\[',  '\\\[', 'g')
        let l:expr = substitute(l:expr,  '\]',  '\\\]', 'g')
        " Execute Ex command according to the parameter
        silent! exe l:expr

        " Match the symbol
        call <SID>SrcExpl_MatchExpr()
        " Highlight the symbol
        call <SID>SrcExpl_ColorExpr()
        " Set the current buf-win attribute
        call <SID>SrcExpl_SetCurrMark()

        " Not highlight the word that had been searched.
        " Because execute Ex command will active a search event
        let l:hlsearch = &hlsearch
        set nohlsearch
        " Refresh all the screen
        redraw
        " Resotre the original setting for the highlight
        let &hlsearch = l:hlsearch

        " Go back to the edit window
        silent! exe s:SrcExpl_editWin . "wincmd w"
    endif

endfunction " }}}

" SrcExpl_TagSth() {{{

" Just try to find the tag under the cursor

function! <SID>SrcExpl_TagSth(expr)

    let l:len = -1

    " Is the symbol valid ?
    if a:expr != '\<\>\C'
        " We get the tag list of the expression
        let l:list = taglist(a:expr)
        " Then get the length of taglist
        let l:len = len(l:list)
    else
        call <SID>SrcExpl_WinPrompt(s:SrcExpl_pluginName . ' v' . string(s:SrcExpl_pluginVer))
        " Should be regarded as 'no definition'
        let s:SrcExpl_status = 0
        return
    endif

    " One tag
    if l:len == 1
        " Get dictionary to load tag's file path and ex command
        let l:dict = get(l:list, 0, {})
        call <SID>SrcExpl_ViewOneDef(l:dict['filename'], l:dict['cmd'])
        " One definition
        let s:SrcExpl_status = 1
    " Multiple tags
    elseif l:len > 1
        call <SID>SrcExpl_ListMultiDefs(l:list, l:len)
        " Multiple definitions
        let s:SrcExpl_status = 2
    " No tag
    else
        call <SID>SrcExpl_WinPrompt('Definition Not Found')
        " No definition
        let s:SrcExpl_status = 0
    endif

endfunction " }}}

" SrcExpl_GoDecl() {{{

" Search the local declaration using 'gd' command

function! <SID>SrcExpl_GoDecl(expr)

    " Get the original cursor position
    let l:oldline = line(".")
    let l:oldcol = col(".")

    " Try to search the local declaration
    if searchdecl(a:expr, 0, 1) != 0
        " Search failed
        return -1
    endif

    " Get the new cursor position
    let l:newline = line(".")
    let l:newcol = col(".")
    " Go back to the original cursor position
    call cursor(l:oldline, l:oldcol)

    " Preview the context
    call <SID>SrcExpl_WinEdit(expand("%:p"))
    " Indeed in the Source Explorer active window
    if <SID>SrcExpl_WinActive()
        " Go to the new cursor position
        call cursor(l:newline, l:newcol)
        " Match the symbol
        call <SID>SrcExpl_MatchExpr()
        " Highlight the symbol
        call <SID>SrcExpl_ColorExpr()
        " Set the current buf-win attribute
        call <SID>SrcExpl_SetCurrMark()
        " Refresh all the screen
        redraw
        " Go back to the edit window
        silent! exe s:SrcExpl_editWin . "wincmd w"
        " We got a local definition
        let s:SrcExpl_status = 3
    endif

    return 0

endfunction " }}}

" SrcExpl_GetSymbol() {{{

" Get the valid symbol under the current cursor

function! <SID>SrcExpl_GetSymbol()

    " Get the current character under the cursor
    let l:cchar = getline(".")[col(".") - 1]
    " Get the current word under the cursor
    let l:cword = expand("<cword>")

    " Judge that if or not the character is invalid,
    " because only 0-9, a-z, A-Z, and '_' are valid
    if l:cchar =~ '\w' && l:cword =~ '\w'
        " If the key word symbol has been explored
        " just now, we will not explore that again
        if s:SrcExpl_symbol ==# l:cword
            " Not in Local definition searching mode
            if g:SrcExpl_searchLocalDef == 0
                return -1
            else
                " Do not refresh when jumping to the edit window
                if s:SrcExpl_isJumped == 1
                    " Get the cursor line number
                    let s:SrcExpl_csrLine = line(".")
                    " Reset the jump flag
                    let s:SrcExpl_isJumped = 0
                    return -2
                endif
                " The cursor is not moved actually
                if s:SrcExpl_csrLine == line(".")
                    return -3
                endif
            endif
        endif
        " Get the cursor line number
        let s:SrcExpl_csrLine = line(".")
        " Get the symbol word under the cursor
        let s:SrcExpl_symbol = l:cword
    " Invalid character
    else
        if s:SrcExpl_symbol == ''
            return -4 " Second, third ...
        else " First
            let s:SrcExpl_symbol = ''
        endif
    endif

    return 0

endfunction " }}}

" SrcExpl_GetInput() {{{

" Get the word inputed by user on the command line window

function! <SID>SrcExpl_GetInput(note)

    " Be sure synchronize
    call inputsave()
    " Get the input content
    let l:input = input(a:note)
    " Save the content
    call inputrestore()
    " Tell the Source Explorer
    return l:input

endfunction " }}}

" SrcExpl_GetEditWin() {{{

" Get the edit window number

function! <SID>SrcExpl_GetEditWin()

    let l:i = 1
    let l:j = 1

    " Loop for searching the edit window
    while 1
        " Traverse the plugin list for each sub-window
        for item in g:SrcExpl_pluginList
            if bufname(winbufnr(l:i)) ==# item
                break
            else
                let l:j += 1
            endif
        endfor

        if j >= len(g:SrcExpl_pluginList)
          \ && getbufvar(winbufnr(l:i), '&buftype') !=# "quickfix"
            " We've found one
            return l:i
        else
            let l:i += 1
        endif

        if l:i > winnr("$")
            " Not found
            return -1
        else
            " Try the next one
            let l:j = 0
        endif
    endwhile

endfunction " }}}

" SrcExpl_CleanUp() {{{

" Clean up the rubbish and free the mapping resources

function! <SID>SrcExpl_CleanUp()

    " GUI version only
    if has("gui_running")
        " Delete the SrcExplGoBack item in Popup menu
        silent! nunmenu 1.01 PopUp.&SrcExplGoBack
    endif

    " Make the 'double-click' for nothing
    if maparg('<2-LeftMouse>', 'n') != ''
        nunmap <silent> <2-LeftMouse>
    endif

    " Unmap the jump key
    if maparg(g:SrcExpl_jumpKey, 'n') ==
        \ ":call g:SrcExpl_Jump()<CR>"
        exe "nunmap " . g:SrcExpl_jumpKey
    endif

    " Unmap the go-back key
    if maparg(g:SrcExpl_gobackKey, 'n') ==
        \ ":call g:SrcExpl_GoBack()<CR>"
        exe "nunmap " . g:SrcExpl_gobackKey
    endif

    " Unmap the update-tags key
    if maparg(g:SrcExpl_updateTagsKey, 'n') ==
        \ ":call g:SrcExpl_UpdateTags()<CR>"
        exe "nunmap " . g:SrcExpl_updateTagsKey
    endif

    " Unmap the previous key
    if maparg(g:SrcExpl_prevDefKey, 'n') ==
        \ ":call g:SrcExpl_PrevDef()<CR>"
        exe "nunmap " . g:SrcExpl_prevDefKey
    endif

    " Unmap the next key
    if maparg(g:SrcExpl_nextDefKey, 'n') ==
        \ ":call g:SrcExpl_NextDef()<CR>"
        exe "nunmap " . g:SrcExpl_nextDefKey
    endif

    " Unload the autocmd group
    silent! autocmd! SrcExpl_AutoCmd

endfunction " }}}

" SrcExpl_Init() {{{

" Initialize the Source Explorer properties

function! <SID>SrcExpl_Init()

    " We'll get the operating system environment in order to
    " judge the slash type (backward or forward)
    if has("win16") || has("win32") || has("win64")
        let s:SrcExpl_isWinOS = 1
    else
        let s:SrcExpl_isWinOS = 0
    endif

    " Have we jumped to the edit window ?
    let s:SrcExpl_isJumped = 0
    " Line number of the current cursor
    let s:SrcExpl_csrLine = 0
    " The ID of edit window
    let s:SrcExpl_editWin = 0
    " The tab page number
    let s:SrcExpl_tabPage = 0
    " Source Explorer status:
    " 0: Definition not found
    " 1: Only one definition
    " 2: Multiple definitions
    " 3: Local declaration
    let s:SrcExpl_status = 0
    " The mark for the current position
    let s:SrcExpl_currMark = []
    " The key word symbol for exploring
    let s:SrcExpl_symbol = ''
    " The last symbol for exploring
    let s:SrcExpl_lastSymbol = ''

    " Auto change current work directory
    exe "set autochdir"
    " Let Vim find the possible tags file
    exe "set tags=tags;"
    " Set the actual update time according to user's requirement
    " 100 milliseconds by default
    exe "set updatetime=" . string(g:SrcExpl_refreshTime)

    " Open all the folds
    if has("folding")
        " Open this file at first
        exe "normal " . "zR"
        " Let it works during the whole editing session
        exe "set foldlevelstart=" . "99"
    endif

    " We must get the edit window number
    let l:tmp = <SID>SrcExpl_GetEditWin()
    " Not found
    if l:tmp < 0
        " Can not find the edit window
        call <SID>SrcExpl_ReportErr("Edit Window Not Found")
        return -1
    endif
    " Jump to the edit window
    silent! exe l:tmp . "wincmd w"

    if g:SrcExpl_isUpdateTags != 0
        " Update the tags file right now
        if g:SrcExpl_UpdateTags()
            return -2
        endif
    endif

    if g:SrcExpl_updateTagsKey != ""
        exe "nnoremap " . g:SrcExpl_updateTagsKey .
            \ " :call g:SrcExpl_UpdateTags()<CR>"
    endif

    if g:SrcExpl_prevDefKey != ""
        exe "nnoremap " . g:SrcExpl_prevDefKey .
            \ " :call g:SrcExpl_PrevDef()<CR>"
    endif

    if g:SrcExpl_nextDefKey != ""
        exe "nnoremap " . g:SrcExpl_nextDefKey .
            \ " :call g:SrcExpl_NextDef()<CR>"
    endif

    " Then we set the routine function when the event happens
    augroup SrcExpl_AutoCmd
        autocmd!
        au! CursorHold * nested call g:SrcExpl_Refresh()
        au! WinEnter * nested call <SID>SrcExpl_WinEnter()
    augroup end

    return 0

endfunction " }}}

" SrcExpl_Toggle() {{{

" The user interface function to open / close the Source Explorer

function! <SID>SrcExpl_Toggle()

    " Not yet running
    if s:SrcExpl_isRunning == 0
        " Initialize the properties
        if <SID>SrcExpl_Init()
            return -1
        endif
        " Create the window
        call <SID>SrcExpl_WinOpen()
        " We change the flag to true
        let s:SrcExpl_isRunning = 1
    else
        " Not in the exact tab page
        if s:SrcExpl_tabPage != tabpagenr()
            call <SID>SrcExpl_ReportErr("Not support multiple tab pages")
            return -2
        endif
        " Close the window
        call <SID>SrcExpl_WinClose()
        " Do the cleaning work
        call <SID>SrcExpl_CleanUp()
        " We change the flag to false
        let s:SrcExpl_isRunning = 0
    endif

    return 0

endfunction " }}}

" SrcExpl_Close() {{{

" The user interface function to close the Source Explorer

function! <SID>SrcExpl_Close()

    " Already running
    if s:SrcExpl_isRunning == 1
        " Not in the exact tab page
        if s:SrcExpl_tabPage != tabpagenr()
            call <SID>SrcExpl_ReportErr("Not support multiple tab pages")
            return -1
        endif
        " Do the cleaning work
        call <SID>SrcExpl_CleanUp()
        " Close the window
        call <SID>SrcExpl_WinClose()
        " We change the flag to false
        let s:SrcExpl_isRunning = 0
    else
        " Tell users the reason
        call <SID>SrcExpl_ReportErr("Source Explorer is close")
        return -2
    endif

    return 0

endfunction " }}}

" SrcExpl() {{{

" The user interface function to open the Source Explorer

function! <SID>SrcExpl()

    " Not yet running
    if s:SrcExpl_isRunning == 0
        " Initialize the properties
        if <SID>SrcExpl_Init()
            return -1
        endif
        " Create the window
        call <SID>SrcExpl_WinOpen()
        " We change the flag to true
        let s:SrcExpl_isRunning = 1
    else
        " Not in the exact tab page
        if s:SrcExpl_tabPage != tabpagenr()
            call <SID>SrcExpl_ReportErr("Not support multiple tab pages")
            return -2
        endif
        " Already running
        call <SID>SrcExpl_ReportErr("Source Explorer is running")
        return -3
    endif

    return 0

endfunction " }}}

" Avoid side effects {{{

set cpoptions&
let &cpoptions = s:save_cpo
unlet s:save_cpo

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
" vim:foldmethod=marker:tabstop=4
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

     plugin/NERD_tree.vim                                                                                0000664 0001750 0001750 00000017042 12401543467 015352  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              " ============================================================================
" File:        NERD_tree.vim
" Description: vim global plugin that provides a nice tree explorer
" Maintainer:  Martin Grenfell <martin.grenfell at gmail dot com>
" Last Change: 28 December, 2011
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================
"
" SECTION: Script init stuff {{{1
"============================================================
if exists("loaded_nerd_tree")
    finish
endif
if v:version < 700
    echoerr "NERDTree: this plugin requires vim >= 7. DOWNLOAD IT! You'll thank me later!"
    finish
endif
let loaded_nerd_tree = 1

"for line continuation - i.e dont want C in &cpo
let s:old_cpo = &cpo
set cpo&vim

"Function: s:initVariable() function {{{2
"This function is used to initialise a given variable to a given value. The
"variable is only initialised if it does not exist prior
"
"Args:
"var: the name of the var to be initialised
"value: the value to initialise var to
"
"Returns:
"1 if the var is set, 0 otherwise
function! s:initVariable(var, value)
    if !exists(a:var)
        exec 'let ' . a:var . ' = ' . "'" . substitute(a:value, "'", "''", "g") . "'"
        return 1
    endif
    return 0
endfunction

"SECTION: Init variable calls and other random constants {{{2
call s:initVariable("g:NERDTreeAutoCenter", 1)
call s:initVariable("g:NERDTreeAutoCenterThreshold", 3)
call s:initVariable("g:NERDTreeCaseSensitiveSort", 0)
call s:initVariable("g:NERDTreeSortHiddenFirst", 1)
call s:initVariable("g:NERDTreeChDirMode", 0)
call s:initVariable("g:NERDTreeMinimalUI", 0)
if !exists("g:NERDTreeIgnore")
    let g:NERDTreeIgnore = ['\~$']
endif
call s:initVariable("g:NERDTreeBookmarksFile", expand('$HOME') . '/.NERDTreeBookmarks')
call s:initVariable("g:NERDTreeBookmarksSort", 1)
call s:initVariable("g:NERDTreeHighlightCursorline", 1)
call s:initVariable("g:NERDTreeHijackNetrw", 1)
call s:initVariable("g:NERDTreeMouseMode", 1)
call s:initVariable("g:NERDTreeNotificationThreshold", 100)
call s:initVariable("g:NERDTreeQuitOnOpen", 0)
call s:initVariable("g:NERDTreeRespectWildIgnore", 0)
call s:initVariable("g:NERDTreeShowBookmarks", 0)
call s:initVariable("g:NERDTreeShowFiles", 1)
call s:initVariable("g:NERDTreeShowHidden", 0)
call s:initVariable("g:NERDTreeShowLineNumbers", 0)
call s:initVariable("g:NERDTreeSortDirs", 1)
call s:initVariable("g:NERDTreeDirArrows", !nerdtree#runningWindows())
call s:initVariable("g:NERDTreeCascadeOpenSingleChildDir", 1)

if !exists("g:NERDTreeSortOrder")
    let g:NERDTreeSortOrder = ['\/$', '*', '\.swp$',  '\.bak$', '\~$']
else
    "if there isnt a * in the sort sequence then add one
    if count(g:NERDTreeSortOrder, '*') < 1
        call add(g:NERDTreeSortOrder, '*')
    endif
endif

if !exists('g:NERDTreeStatusline')

    "the exists() crap here is a hack to stop vim spazzing out when
    "loading a session that was created with an open nerd tree. It spazzes
    "because it doesnt store b:NERDTreeRoot (its a b: var, and its a hash)
    let g:NERDTreeStatusline = "%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}"

endif
call s:initVariable("g:NERDTreeWinPos", "left")
call s:initVariable("g:NERDTreeWinSize", 31)

"init the shell commands that will be used to copy nodes, and remove dir trees
"
"Note: the space after the command is important
if nerdtree#runningWindows()
    call s:initVariable("g:NERDTreeRemoveDirCmd", 'rmdir /s /q ')
else
    call s:initVariable("g:NERDTreeRemoveDirCmd", 'rm -rf ')
    call s:initVariable("g:NERDTreeCopyCmd", 'cp -r ')
endif


"SECTION: Init variable calls for key mappings {{{2
call s:initVariable("g:NERDTreeMapActivateNode", "o")
call s:initVariable("g:NERDTreeMapChangeRoot", "C")
call s:initVariable("g:NERDTreeMapChdir", "cd")
call s:initVariable("g:NERDTreeMapCloseChildren", "X")
call s:initVariable("g:NERDTreeMapCloseDir", "x")
call s:initVariable("g:NERDTreeMapDeleteBookmark", "D")
call s:initVariable("g:NERDTreeMapMenu", "m")
call s:initVariable("g:NERDTreeMapHelp", "?")
call s:initVariable("g:NERDTreeMapJumpFirstChild", "K")
call s:initVariable("g:NERDTreeMapJumpLastChild", "J")
call s:initVariable("g:NERDTreeMapJumpNextSibling", "<C-j>")
call s:initVariable("g:NERDTreeMapJumpParent", "p")
call s:initVariable("g:NERDTreeMapJumpPrevSibling", "<C-k>")
call s:initVariable("g:NERDTreeMapJumpRoot", "P")
call s:initVariable("g:NERDTreeMapOpenExpl", "e")
call s:initVariable("g:NERDTreeMapOpenInTab", "t")
call s:initVariable("g:NERDTreeMapOpenInTabSilent", "T")
call s:initVariable("g:NERDTreeMapOpenRecursively", "O")
call s:initVariable("g:NERDTreeMapOpenSplit", "i")
call s:initVariable("g:NERDTreeMapOpenVSplit", "s")
call s:initVariable("g:NERDTreeMapPreview", "g" . NERDTreeMapActivateNode)
call s:initVariable("g:NERDTreeMapPreviewSplit", "g" . NERDTreeMapOpenSplit)
call s:initVariable("g:NERDTreeMapPreviewVSplit", "g" . NERDTreeMapOpenVSplit)
call s:initVariable("g:NERDTreeMapQuit", "q")
call s:initVariable("g:NERDTreeMapRefresh", "r")
call s:initVariable("g:NERDTreeMapRefreshRoot", "R")
call s:initVariable("g:NERDTreeMapToggleBookmarks", "B")
call s:initVariable("g:NERDTreeMapToggleFiles", "F")
call s:initVariable("g:NERDTreeMapToggleFilters", "f")
call s:initVariable("g:NERDTreeMapToggleHidden", "I")
call s:initVariable("g:NERDTreeMapToggleZoom", "A")
call s:initVariable("g:NERDTreeMapUpdir", "u")
call s:initVariable("g:NERDTreeMapUpdirKeepOpen", "U")
call s:initVariable("g:NERDTreeMapCWD", "CD")

"SECTION: Load class files{{{2
call nerdtree#loadClassFiles()

" SECTION: Commands {{{1
"============================================================
call nerdtree#ui_glue#setupCommands()

" SECTION: Auto commands {{{1
"============================================================
augroup NERDTree
    "Save the cursor position whenever we close the nerd tree
    exec "autocmd BufLeave ". g:NERDTreeCreator.BufNamePrefix() ."* call b:NERDTree.ui.saveScreenState()"

    "disallow insert mode in the NERDTree
    exec "autocmd BufEnter ". g:NERDTreeCreator.BufNamePrefix() ."* stopinsert"
augroup END

if g:NERDTreeHijackNetrw
    augroup NERDTreeHijackNetrw
        autocmd VimEnter * silent! autocmd! FileExplorer
        au BufEnter,VimEnter * call nerdtree#checkForBrowse(expand("<amatch>"))
    augroup END
endif

" SECTION: Public API {{{1
"============================================================
function! NERDTreeAddMenuItem(options)
    call g:NERDTreeMenuItem.Create(a:options)
endfunction

function! NERDTreeAddMenuSeparator(...)
    let opts = a:0 ? a:1 : {}
    call g:NERDTreeMenuItem.CreateSeparator(opts)
endfunction

function! NERDTreeAddSubmenu(options)
    return g:NERDTreeMenuItem.Create(a:options)
endfunction

function! NERDTreeAddKeyMap(options)
    call g:NERDTreeKeyMap.Create(a:options)
endfunction

function! NERDTreeRender()
    call nerdtree#renderView()
endfunction

function! NERDTreeFocus()
    if nerdtree#isTreeOpen()
        call nerdtree#putCursorInTreeWin()
    else
        call g:NERDTreeCreator.TogglePrimary("")
    endif
endfunction

function! NERDTreeCWD()
    call NERDTreeFocus()
    call nerdtree#ui_glue#chRootCwd()
endfunction
" SECTION: Post Source Actions {{{1
call nerdtree#postSourceActions()

"reset &cpo back to users setting
let &cpo = s:old_cpo

" vim: set sw=4 sts=4 et fdm=marker:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              syntax/                                                                                             0000775 0001750 0001750 00000000000 12401543467 013112  5                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              syntax/nerdtree.vim                                                                                 0000664 0001750 0001750 00000010457 12401543467 015446  0                                                                                                    ustar   yugun                       yugun                                                                                                                                                                                                              let s:tree_up_dir_line = '.. (up a dir)'
syn match NERDTreeIgnore #\~#
syn match NERDTreeIgnore #\[RO\]#

"highlighting for the .. (up dir) line at the top of the tree
execute "syn match NERDTreeUp #\\V". s:tree_up_dir_line ."#"

"quickhelp syntax elements
syn match NERDTreeHelpKey #" \{1,2\}[^ ]*:#ms=s+2,me=e-1
syn match NERDTreeHelpKey #" \{1,2\}[^ ]*,#ms=s+2,me=e-1
syn match NERDTreeHelpTitle #" .*\~#ms=s+2,me=e-1
syn match NERDTreeToggleOn #(on)#ms=s+1,he=e-1
syn match NERDTreeToggleOff #(off)#ms=e-3,me=e-1
syn match NERDTreeHelpCommand #" :.\{-}\>#hs=s+3
syn match NERDTreeHelp  #^".*# contains=NERDTreeHelpKey,NERDTreeHelpTitle,NERDTreeIgnore,NERDTreeToggleOff,NERDTreeToggleOn,NERDTreeHelpCommand

"highlighting for sym links
syn match NERDTreeLinkTarget #->.*# containedin=NERDTreeDir,NERDTreeFile
syn match NERDTreeLinkFile #.* ->#me=e-3 containedin=NERDTreeFile
syn match NERDTreeLinkDir #.*/ ->#me=e-3 containedin=NERDTreeDir

"highlighing for directory nodes and file nodes
syn match NERDTreeDirSlash #/# containedin=NERDTreeDir

if g:NERDTreeDirArrows
    syn match NERDTreeClosable #▾# containedin=NERDTreeDir,NERDTreeFile
    syn match NERDTreeOpenable #▸# containedin=NERDTreeDir,NERDTreeFile

    syn match NERDTreeDir #[^▾▸ ].*/#
    syn match NERDTreeExecFile  #^ .*\*\($\| \)# contains=NERDTreeRO,NERDTreeBookmark
    syn match NERDTreeFile  #^[^"\.▾▸] *[^▾▸]*# contains=NERDTreeLink,NERDTreeRO,NERDTreeBookmark,NERDTreeExecFile

    "highlighting for readonly files
    syn match NERDTreeRO # *\zs.*\ze \[RO\]# contains=NERDTreeIgnore,NERDTreeBookmark,NERDTreeFile

    syn match NERDTreeFlags #^ *\zs\[.\]# containedin=NERDTreeFile
    syn match NERDTreeFlags #\[.\]# containedin=NERDTreeDir
else
    "highlighting for the ~/+ symbols for the directory nodes
    syn match NERDTreeClosable #\~\<#
    syn match NERDTreeClosable #\~\.#
    syn match NERDTreeOpenable #+\<#
    syn match NERDTreeOpenable #+\.#he=e-1

    "highlighting for the tree structural parts
    syn match NERDTreePart #|#
    syn match NERDTreePart #`#
    syn match NERDTreePartFile #[|`]-#hs=s+1 contains=NERDTreePart

    syn match NERDTreeDir #[^-| `].*/# contains=NERDTreeLink,NERDTreeOpenable,NERDTreeClosable
    syn match NERDTreeExecFile  #[|` ].*\*\($\| \)# contains=NERDTreeLink,NERDTreePart,NERDTreePartFile,NERDTreeBookmark
    syn match NERDTreeFile  #|-.*# contains=NERDTreeLink,NERDTreePart,NERDTreePartFile,NERDTreeBookmark,NERDTreeExecFile
    syn match NERDTreeFile  #`-.*# contains=NERDTreeLink,NERDTreePart,NERDTreePartFile,NERDTreeBookmark,NERDTreeExecFile

    "highlighting for readonly files
    syn match NERDTreeRO #|-.*\[RO\]#he=e-5 contains=NERDTreeIgnore,NERDTreeBookmark,NERDTreePart,NERDTreePartFile

    syn match NERDTreeFlags #-\[.\]# containedin=NERDTreeFile,NERDTreePartFile
    syn match NERDTreeFlags #[+~]\zs\[.\]# containedin=NERDTreeDir
endif

syn match NERDTreeCWD #^[</].*$#

"highlighting for bookmarks
syn match NERDTreeBookmark # {.*}#hs=s+1

"highlighting for the bookmarks table
syn match NERDTreeBookmarksLeader #^>#
syn match NERDTreeBookmarksHeader #^>-\+Bookmarks-\+$# contains=NERDTreeBookmarksLeader
syn match NERDTreeBookmarkName #^>.\{-} #he=e-1 contains=NERDTreeBookmarksLeader
syn match NERDTreeBookmark #^>.*$# contains=NERDTreeBookmarksLeader,NERDTreeBookmarkName,NERDTreeBookmarksHeader

hi def link NERDTreePart Special
hi def link NERDTreePartFile Type
hi def link NERDTreeExecFile Title
hi def link NERDTreeDirSlash Identifier

hi def link NERDTreeBookmarksHeader statement
hi def link NERDTreeBookmarksLeader ignore
hi def link NERDTreeBookmarkName Identifier
hi def link NERDTreeBookmark normal

hi def link NERDTreeHelp String
hi def link NERDTreeHelpKey Identifier
hi def link NERDTreeHelpCommand Identifier
hi def link NERDTreeHelpTitle Macro
hi def link NERDTreeToggleOn Question
hi def link NERDTreeToggleOff WarningMsg

hi def link NERDTreeLinkTarget Type
hi def link NERDTreeLinkFile Macro
hi def link NERDTreeLinkDir Macro

hi def link NERDTreeDir Directory
hi def link NERDTreeUp Directory
hi def link NERDTreeFile Normal
hi def link NERDTreeCWD Statement
hi def link NERDTreeOpenable Title
hi def link NERDTreeClosable Title
hi def link NERDTreeIgnore ignore
hi def link NERDTreeRO WarningMsg
hi def link NERDTreeBookmark Statement
hi def link NERDTreeFlags Number

hi def link NERDTreeCurrentNode Search
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
