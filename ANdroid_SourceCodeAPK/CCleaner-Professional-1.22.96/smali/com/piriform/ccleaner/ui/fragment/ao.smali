.class public final Lcom/piriform/ccleaner/ui/fragment/ao;
.super Landroid/support/v4/app/h;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/t$a;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/piriform/ccleaner/ui/fragment/ai$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/h;",
        "Landroid/support/v4/app/t$a",
        "<[",
        "Lcom/piriform/ccleaner/f/j;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/piriform/ccleaner/ui/fragment/ai$a;"
    }
.end annotation


# instance fields
.field private a:Lcom/piriform/ccleaner/ui/fragment/ag;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->e:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 160
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/ao;->I()V

    .line 176
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/ao;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ao;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/ao;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v2, "show_hidden_files"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/ao;->e(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public final D_()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v4/app/h;->D_()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->a:Lcom/piriform/ccleaner/ui/fragment/ag;

    .line 111
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f03004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/app/Activity;)V

    .line 100
    instance-of v0, p1, Lcom/piriform/ccleaner/ui/fragment/ag;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Activity must implement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/piriform/ccleaner/ui/fragment/ag;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/fragment/ag;

    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->a:Lcom/piriform/ccleaner/ui/fragment/ag;

    .line 105
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/os/Bundle;)V

    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "You can\'t use this fragment without providing arguments."

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->b:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "show_hidden_files"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->c:Z

    .line 64
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2016
    const v0, 0x7f1000e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->e:Landroid/widget/ViewSwitcher;

    .line 3016
    const v0, 0x7f1000ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->d:Landroid/widget/ListView;

    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3089
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->e:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 3090
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/ao;->I()V

    .line 3092
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/ao;->l()Landroid/support/v4/app/t;

    move-result-object v0

    .line 3093
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/t$a;)Landroid/support/v4/b/d;

    .line 80
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/f/j;)V
    .locals 2

    .prologue
    .line 115
    .line 3217
    iget-object v0, p1, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3265
    iget-boolean v1, p1, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 116
    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->a:Lcom/piriform/ccleaner/ui/fragment/ag;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/ag;->b(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->a:Lcom/piriform/ccleaner/ui/fragment/ag;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 29
    check-cast p1, [Lcom/piriform/ccleaner/f/j;

    .line 6163
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->e:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 6132
    new-instance v1, Lcom/piriform/ccleaner/f/k;

    invoke-direct {v1}, Lcom/piriform/ccleaner/f/k;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 6136
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->b:Ljava/lang/String;

    .line 6191
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 6192
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 6136
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6137
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    .line 6149
    :goto_0
    new-instance v2, Lcom/piriform/ccleaner/ui/fragment/ai;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/ao;->g()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/piriform/ccleaner/ui/fragment/ai;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/piriform/ccleaner/ui/fragment/ai$a;)V

    .line 6150
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    return-void

    .line 6139
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6140
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 6141
    if-eqz v2, :cond_1

    .line 7049
    invoke-static {v2}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    .line 6143
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6144
    const/4 v0, 0x1

    .line 6146
    :cond_1
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method public final b()Landroid/support/v4/b/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/b/d",
            "<[",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/piriform/ccleaner/ui/c/b;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/ao;->g()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/ui/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final c()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/ao;->J()V

    .line 156
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->d:Landroid/widget/ListView;

    .line 85
    invoke-super {p0}, Landroid/support/v4/app/h;->e()V

    .line 86
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 4265
    iget-boolean v1, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 169
    if-eqz v1, :cond_0

    .line 5217
    iget-object v0, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5182
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ao;->b:Ljava/lang/String;

    .line 5184
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/ao;->J()V

    .line 5186
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/ao;->l()Landroid/support/v4/app/t;

    move-result-object v0

    .line 5187
    invoke-virtual {v0, p0}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/t$a;)Landroid/support/v4/b/d;

    .line 172
    :cond_0
    return-void
.end method
