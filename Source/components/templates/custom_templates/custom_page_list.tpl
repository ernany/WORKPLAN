<div class="sidebar-nav">
    <ul class="nav nav-list pg-page-list">

        {foreach item=Group from=$List.Groups}
            {if $Group == 'Default'}
                <li class="nav-header">{$Captions->GetMessageString('PageList')}</li>
            {else}
                <li class="nav-header">{$Group}</li>
            {/if}

            {foreach item=PageListPage from=$List.Pages}

                {if $PageListPage.GroupName == $Group}

                    {if $PageListPage.BeginNewGroup}
                        <li class="divider"></li>
                    {/if}

                    {if $PageListPage.IsCurrent}
                        <li class="active">
                            <a href="#" title="{$PageListPage.Hint}" onclick="return false;" style="cursor: default;">
                                <i class="page-list-icon"></i>
                                {$PageListPage.Caption}
                                {if $List.RSSLink}
                                    <span class="pull-right" style="cursor: pointer;" onclick="window.location.href={jsstring value=$List.RSSLink};">
                                        <i class="pg-icon-rss"></i>
                                    </span>
                                {/if}
                            </a>
                        </li>
                    {else}
                        <li><a href="{$PageListPage.Href|escapeurl}" title="{$PageListPage.Hint}">
                            <i class="page-list-icon"></i>
                            {$PageListPage.Caption}
                        </a></li>
                    {/if}

                {/if}

            {/foreach}

        {/foreach}

        {* <CustomTemplate> *}
        <li class="nav-header shift-down">Quick links</li>
        <li><a class="external" href="http://www.courtenay.ca/" target="_blank"><i class="external"></i>City of Courtenay Website</a></li>
        <li><a class="external" href="http://http://www.municipalinfonet.com" target="_blank"><i class="external nba"></i>Municipal Information Network</a></li>
	<li><a class="external" href="documents/quicklinks.html" target="_blank"><i class="external"></i>Edit this Template</a></li>

        {* </CustomTemplate> *}


{* <CustomTemplate> *}
        <li class="nav-header shift-down">Resources</li>
        <li><a class="external" href="http://www.pac.bluecross.ca/" target="_blank"><i class="external"></i>Pacific Blue Cross</a></li>
        <li><a class="external" href="http://www.civicinfo.bc.ca/" target="_blank"><i class="external nba"></i>Civicinfo</a></li>
	<li><a class="external" href="http://www.theweathernetwork.com/" target="_blank"><i class="external"></i>The Weather Network</a></li>
	
        {* </CustomTemplate> *}

    </ul>
</div>
