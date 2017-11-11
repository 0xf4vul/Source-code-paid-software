.class public abstract Lcom/piriform/ccleaner/ui/a/c;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/a/c$a;
    }
.end annotation


# instance fields
.field protected H:Landroid/support/v4/widget/DrawerLayout;

.field I:Lcom/piriform/ccleaner/ui/a/d;

.field J:Lcom/piriform/ccleaner/ui/a/g;

.field private m:Landroid/support/v7/app/b;

.field private n:Landroid/widget/ListView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/piriform/ccleaner/ui/a/j;

.field private s:Ljava/lang/Runnable;

.field private t:Lcom/piriform/ccleaner/professional/g;

.field private u:Lf/j;

.field private final v:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/professional/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    .line 43
    new-instance v0, Lcom/piriform/ccleaner/ui/a/c$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/a/c$1;-><init>(Lcom/piriform/ccleaner/ui/a/c;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->v:Lf/e;

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/a/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->s:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/a/c;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/c;->s:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/a/c;I)V
    .locals 3

    .prologue
    .line 28
    .line 8162
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->I:Lcom/piriform/ccleaner/ui/a/d;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/a/d;->a(I)Lcom/piriform/ccleaner/ui/a/e;

    move-result-object v0

    .line 8163
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->q:Lcom/piriform/ccleaner/ui/a/j;

    .line 8167
    invoke-static {p0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v2

    .line 9123
    iget-object v2, v2, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    .line 8163
    invoke-interface {v0, p0, v1, v2}, Lcom/piriform/ccleaner/ui/a/e;->a(Lcom/piriform/ccleaner/ui/a/c;Lcom/piriform/ccleaner/ui/a/j;Lcom/piriform/ccleaner/b/a;)V

    .line 28
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/a/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/ui/a/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/piriform/ccleaner/ui/a/c;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->H:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->t:Lcom/piriform/ccleaner/professional/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/g;->a()Lf/d;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->v:Lf/e;

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->u:Lf/j;

    .line 93
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->m:Landroid/support/v7/app/b;

    .line 7265
    iget-boolean v1, v0, Landroid/support/v7/app/b;->e:Z

    if-nez v1, :cond_0

    .line 7266
    invoke-virtual {v0}, Landroid/support/v7/app/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/b;->c:Landroid/graphics/drawable/Drawable;

    .line 7268
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/b;->a()V

    .line 105
    return-void
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onContentChanged()V

    .line 2024
    const v0, 0x7f100085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1119
    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->H:Landroid/support/v4/widget/DrawerLayout;

    .line 3024
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1120
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->n:Landroid/widget/ListView;

    .line 4024
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1121
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->o:Landroid/view/View;

    .line 5024
    const v0, 0x7f100086

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1122
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->p:Landroid/view/View;

    .line 1124
    new-instance v0, Lcom/piriform/ccleaner/ui/a/g;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->J:Lcom/piriform/ccleaner/ui/a/g;

    .line 1125
    new-instance v0, Lcom/piriform/ccleaner/ui/a/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->J:Lcom/piriform/ccleaner/ui/a/g;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/ui/a/d;-><init>(Lcom/piriform/ccleaner/ui/a/g;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->I:Lcom/piriform/ccleaner/ui/a/d;

    .line 1127
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/a/c;->f()V

    .line 1129
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->I:Lcom/piriform/ccleaner/ui/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1130
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/piriform/ccleaner/ui/a/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/piriform/ccleaner/ui/a/c$a;-><init>(Lcom/piriform/ccleaner/ui/a/c;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1132
    new-instance v0, Lcom/piriform/ccleaner/ui/a/c$2;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->H:Landroid/support/v4/widget/DrawerLayout;

    .line 6021
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/a;->r:Lcom/piriform/ccleaner/ui/f;

    .line 6046
    iget-object v2, v2, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    .line 1132
    invoke-direct {v0, p0, p0, v1, v2}, Lcom/piriform/ccleaner/ui/a/c$2;-><init>(Lcom/piriform/ccleaner/ui/a/c;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->m:Landroid/support/v7/app/b;

    .line 1157
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->m:Landroid/support/v7/app/b;

    .line 6361
    iget-boolean v0, v1, Landroid/support/v7/app/b;->d:Z

    if-eq v3, v0, :cond_0

    .line 6363
    iget-object v2, v1, Landroid/support/v7/app/b;->b:Landroid/support/v7/d/a/b;

    iget-object v0, v1, Landroid/support/v7/app/b;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 6364
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v1, Landroid/support/v7/app/b;->g:I

    .line 6363
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/b;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 6369
    iput-boolean v3, v1, Landroid/support/v7/app/b;->d:Z

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->H:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->m:Landroid/support/v7/app/b;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$f;)V

    .line 74
    new-instance v0, Lcom/piriform/ccleaner/ui/a/j;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/a/j;-><init>(Lcom/piriform/ccleaner/ui/a/c;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->q:Lcom/piriform/ccleaner/ui/a/j;

    .line 75
    return-void

    .line 6364
    :cond_1
    iget v0, v1, Landroid/support/v7/app/b;->f:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->a()Lcom/piriform/ccleaner/professional/g;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->t:Lcom/piriform/ccleaner/professional/g;

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const v3, 0x102002c

    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->m:Landroid/support/v7/app/b;

    .line 7281
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Landroid/support/v7/app/b;->d:Z

    if-eqz v2, :cond_0

    .line 7282
    invoke-virtual {v1}, Landroid/support/v7/app/b;->b()V

    move v1, v0

    .line 109
    :goto_0
    if-eqz v1, :cond_1

    .line 115
    :goto_1
    return v0

    .line 7285
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->m:Landroid/support/v7/app/b;

    .line 7347
    iget-boolean v1, v1, Landroid/support/v7/app/b;->d:Z

    .line 111
    if-nez v1, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/a/c;->onBackPressed()V

    goto :goto_1

    .line 115
    :cond_2
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->u:Lf/j;

    invoke-interface {v0}, Lf/j;->b()V

    .line 88
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->m:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->a()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onResume()V

    .line 80
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c;->I:Lcom/piriform/ccleaner/ui/a/d;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/a/c;->n:Landroid/widget/ListView;

    .line 7052
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v1, Lcom/piriform/ccleaner/ui/a/d;->a:Lcom/piriform/ccleaner/ui/a/g;

    invoke-virtual {v3}, Lcom/piriform/ccleaner/ui/a/g;->a()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 7053
    iget-object v3, v1, Lcom/piriform/ccleaner/ui/a/d;->a:Lcom/piriform/ccleaner/ui/a/g;

    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/ui/a/g;->a(I)Lcom/piriform/ccleaner/ui/a/e;

    move-result-object v3

    .line 7054
    invoke-interface {v3, p0}, Lcom/piriform/ccleaner/ui/a/e;->a(Lcom/piriform/ccleaner/ui/a/c;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7055
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 7052
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/a/c;->f()V

    .line 82
    return-void
.end method
