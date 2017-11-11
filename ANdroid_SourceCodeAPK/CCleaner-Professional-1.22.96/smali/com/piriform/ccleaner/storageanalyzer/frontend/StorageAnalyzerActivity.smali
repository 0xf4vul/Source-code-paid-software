.class public Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;
.super Lcom/piriform/ccleaner/ui/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;


# instance fields
.field m:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

.field n:Lcom/piriform/ccleaner/b/a;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;

.field private q:Lcom/piriform/ccleaner/storageanalyzer/frontend/r;

.field private s:Lcom/piriform/ccleaner/storageanalyzer/a;

.field private final t:Lcom/piriform/ccleaner/storageanalyzer/frontend/g;

.field private final u:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/a/c;-><init>()V

    .line 33
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/e;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/e;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->t:Lcom/piriform/ccleaner/storageanalyzer/frontend/g;

    .line 40
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->u:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/storageanalyzer/a;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 51
    iget-object v4, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->p:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;

    .line 7053
    invoke-virtual {p1}, Lcom/piriform/ccleaner/storageanalyzer/a;->b()J

    move-result-wide v6

    .line 7069
    invoke-static {v6, v7}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 7070
    invoke-virtual {v4}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f080267

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v1

    invoke-virtual {v2, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7071
    iget-object v2, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->g:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    invoke-virtual {v2, v0}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setRightText(Ljava/lang/CharSequence;)V

    .line 7075
    iget-object v0, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->i:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    .line 8059
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 7075
    if-eqz v0, :cond_0

    .line 8085
    invoke-virtual {v4}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v0, v1

    .line 8086
    :goto_0
    invoke-static {}, Lcom/piriform/ccleaner/storageanalyzer/f;->values()[Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 8087
    invoke-static {}, Lcom/piriform/ccleaner/storageanalyzer/f;->values()[Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v2

    aget-object v2, v2, v0

    .line 9066
    sget-object v8, Lcom/piriform/ccleaner/storageanalyzer/frontend/s$1;->a:[I

    invoke-virtual {v2}, Lcom/piriform/ccleaner/storageanalyzer/f;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 9084
    invoke-static {v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;->b(Lcom/piriform/ccleaner/storageanalyzer/f;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 9068
    :pswitch_0
    const v2, 0x7f0e0095

    .line 8088
    :goto_1
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 8089
    iget-object v8, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->j:[Lcom/piriform/ccleaner/ui/view/j;

    new-instance v9, Lcom/piriform/ccleaner/ui/view/j;

    invoke-direct {v9, v2, v10, v11}, Lcom/piriform/ccleaner/ui/view/j;-><init>(IJ)V

    aput-object v9, v8, v0

    .line 8090
    iget-object v2, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->i:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    iget-object v8, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->j:[Lcom/piriform/ccleaner/ui/view/j;

    aget-object v8, v8, v0

    invoke-virtual {v2, v8}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a(Lcom/piriform/ccleaner/ui/view/j;)V

    .line 8086
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9070
    :pswitch_1
    const v2, 0x7f0e0097

    goto :goto_1

    .line 9072
    :pswitch_2
    const v2, 0x7f0e0099

    goto :goto_1

    .line 9074
    :pswitch_3
    const v2, 0x7f0e009b

    goto :goto_1

    .line 9076
    :pswitch_4
    const v2, 0x7f0e0098

    goto :goto_1

    .line 9078
    :pswitch_5
    const v2, 0x7f0e0096

    goto :goto_1

    .line 9080
    :pswitch_6
    const v2, 0x7f0e0094

    goto :goto_1

    .line 9082
    :pswitch_7
    const v2, 0x7f0e009a

    goto :goto_1

    .line 11071
    :cond_0
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 10075
    if-nez v0, :cond_2

    move v0, v3

    .line 9095
    :goto_2
    if-eqz v0, :cond_4

    cmp-long v0, v6, v10

    if-lez v0, :cond_4

    .line 9096
    invoke-static {}, Lcom/piriform/ccleaner/storageanalyzer/f;->values()[Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_3

    aget-object v5, v2, v0

    .line 11104
    invoke-virtual {p1, v5}, Lcom/piriform/ccleaner/storageanalyzer/a;->a(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/storageanalyzer/c;

    move-result-object v5

    .line 11105
    if-eqz v5, :cond_1

    .line 11106
    invoke-interface {v5}, Lcom/piriform/ccleaner/storageanalyzer/c;->b()J

    move-result-wide v8

    iget-object v10, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->i:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    invoke-virtual {v10}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getMaxValue()J

    move-result-wide v10

    mul-long/2addr v8, v10

    div-long/2addr v8, v6

    .line 11107
    iget-object v10, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->j:[Lcom/piriform/ccleaner/ui/view/j;

    invoke-interface {v5}, Lcom/piriform/ccleaner/storageanalyzer/c;->a()Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v5

    .line 12045
    iget v5, v5, Lcom/piriform/ccleaner/storageanalyzer/f;->i:I

    .line 11107
    aget-object v5, v10, v5

    .line 13013
    iput-wide v8, v5, Lcom/piriform/ccleaner/ui/view/j;->b:J

    .line 9096
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v0, v1

    .line 10075
    goto :goto_2

    .line 9099
    :cond_3
    iget-object v0, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->i:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->invalidate()V

    .line 13117
    :cond_4
    iget-object v0, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->h:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setVisibility(I)V

    .line 13118
    iget-object v0, v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->h:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->a()V

    .line 7060
    const v0, 0x7f0801f9

    invoke-virtual {v4, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->setProgressText(I)V

    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->q:Lcom/piriform/ccleaner/storageanalyzer/frontend/r;

    .line 14040
    iput-object p1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 14636
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 53
    return-void

    .line 9066
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 57
    invoke-static {p0}, Lcom/novoda/notils/c/b/e;->a(Landroid/content/Context;)Lcom/novoda/notils/c/b/e;

    move-result-object v0

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(I)V

    .line 58
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->p:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;

    .line 15064
    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->setProgressText(I)V

    .line 15065
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->h:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->b()V

    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->q:Lcom/piriform/ccleaner/storageanalyzer/frontend/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->a(Z)V

    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;)V

    .line 71
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->setContentView(I)V

    .line 16024
    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->p:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;

    .line 17024
    const v0, 0x7f1000ab

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100185

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 17084
    iget-boolean v0, v0, Lcom/piriform/ccleaner/storageanalyzer/a;->c:Z

    .line 91
    if-eqz v0, :cond_1

    .line 93
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/e;

    invoke-direct {v1}, Lcom/piriform/ccleaner/storageanalyzer/e;-><init>()V

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/a;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/storageanalyzer/e;->a(Lcom/piriform/ccleaner/storageanalyzer/a;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Done! Look for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/piriform/ccleaner/storageanalyzer/e$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    invoke-static {p0}, Lcom/novoda/notils/c/b/e;->a(Landroid/content/Context;)Lcom/novoda/notils/c/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/novoda/notils/c/b/e;->a(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 97
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Problem creating storage analyzer dump"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 98
    const-string/jumbo v0, "Problem creating dump, see log"

    goto :goto_0

    .line 101
    :cond_1
    const-string/jumbo v0, "Not done analysing yet, hold on there a second."

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onStart()V

    .line 112
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/storageanalyzer/a;-><init>()V

    .line 113
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->u:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;

    new-instance v3, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    invoke-direct {v3}, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;-><init>(Lcom/piriform/ccleaner/storageanalyzer/a;Lcom/piriform/ccleaner/storageanalyzer/frontend/t;Lcom/piriform/ccleaner/storageanalyzer/frontend/s;)V

    iput-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->q:Lcom/piriform/ccleaner/storageanalyzer/frontend/r;

    .line 114
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->q:Lcom/piriform/ccleaner/storageanalyzer/frontend/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->a(Z)V

    .line 115
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->q:Lcom/piriform/ccleaner/storageanalyzer/frontend/r;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->a(Lcom/piriform/ccleaner/storageanalyzer/a;)V

    .line 118
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->m:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->t:Lcom/piriform/ccleaner/storageanalyzer/frontend/g;

    .line 18050
    iput-object p0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->d:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

    .line 18051
    iput-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->g:Lcom/piriform/ccleaner/storageanalyzer/frontend/g;

    .line 18052
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

    invoke-interface {v1}, Lcom/piriform/ccleaner/storageanalyzer/backend/e;->a()Lf/d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->b:Lf/g;

    .line 18053
    invoke-virtual {v1, v2}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->c:Lf/g;

    .line 18054
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v1

    .line 18060
    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$2;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$2;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/q;)V

    .line 18055
    invoke-virtual {v1, v2}, Lf/d;->b(Lf/c/a;)Lf/d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->f:Lf/e;

    .line 18056
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/e;)Lf/j;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->e:Lf/j;

    .line 119
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onStop()V

    .line 125
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->m:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    .line 18069
    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

    iput-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->d:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

    .line 18070
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->e:Lf/j;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->e:Lf/j;

    invoke-interface {v1}, Lf/j;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18071
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->e:Lf/j;

    invoke-interface {v1}, Lf/j;->b()V

    .line 18072
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->e:Lf/j;

    .line 126
    :cond_0
    return-void
.end method
