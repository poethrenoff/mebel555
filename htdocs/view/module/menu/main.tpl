{foreach from=$menu_tree item=menu_item}
{if $menu_item._selected}
<a href="{$menu_item.menu_url}" class="item selected">{$menu_item.menu_title}</a>
{/if}
{/foreach}
{foreach from=$menu_tree item=menu_item}
{if !$menu_item._selected}
<a href="{$menu_item.menu_url}" class="item">{$menu_item.menu_title}</a>
{/if}
{/foreach}
