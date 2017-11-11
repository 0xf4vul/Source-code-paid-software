.class public Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;
.super Lcom/piriform/ccleaner/ui/a/c;
.source "SourceFile"


# instance fields
.field m:Lcom/piriform/ccleaner/professional/k;

.field n:Lcom/novoda/notils/c/b/e;

.field o:Lcom/piriform/ccleaner/b/b/c;

.field p:Lcom/piriform/ccleaner/b/a;

.field private q:Landroid/support/v4/view/ViewPager;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/professional/i;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lf/j;

.field private final u:Landroid/support/v4/view/ViewPager$f;

.field private final v:Lcom/piriform/ccleaner/professional/k$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/a/c;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$1;-><init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->u:Landroid/support/v4/view/ViewPager$f;

    .line 61
    new-instance v0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;-><init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->v:Lcom/piriform/ccleaner/professional/k$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V
    .locals 2

    .prologue
    .line 30
    .line 3214
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->m:Lcom/piriform/ccleaner/professional/k;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->v:Lcom/piriform/ccleaner/professional/k$a;

    invoke-interface {v0, p0, v1}, Lcom/piriform/ccleaner/professional/k;->a(Landroid/app/Activity;Lcom/piriform/ccleaner/professional/k$a;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;Lcom/piriform/ccleaner/professional/i;)V
    .locals 3

    .prologue
    .line 30
    .line 4195
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4196
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/piriform/ccleaner/professional/h;

    iget-object v2, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/piriform/ccleaner/professional/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/s;)V

    .line 4197
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 4198
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;Lcom/piriform/ccleaner/b/b/b;)Z
    .locals 1

    .prologue
    .line 5182
    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 30
    goto :goto_0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0, p1, p2, p3}, Lcom/piriform/ccleaner/ui/a/c;->onActivityResult(IILandroid/content/Intent;)V

    .line 220
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->m:Lcom/piriform/ccleaner/professional/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/piriform/ccleaner/professional/k;->a(IILandroid/content/Intent;)V

    .line 221
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V

    .line 95
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->setContentView(I)V

    .line 1021
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/a;->r:Lcom/piriform/ccleaner/ui/f;

    .line 1046
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    .line 97
    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/a;->r:Lcom/piriform/ccleaner/ui/f;

    .line 2046
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    .line 98
    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 101
    :cond_0
    const v0, 0x7f1000b3

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    .line 102
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/piriform/ccleaner/professional/h;

    iget-object v2, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/piriform/ccleaner/professional/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/s;)V

    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->u:Landroid/support/v4/view/ViewPager$f;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 2121
    new-instance v0, Lcom/piriform/ccleaner/professional/i;

    const v1, 0x7f08022f

    const v2, 0x7f08022e

    const v3, 0x7f020110

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/professional/i;-><init>(III)V

    .line 2126
    new-instance v1, Lcom/piriform/ccleaner/professional/i;

    const v2, 0x7f08022d

    const v3, 0x7f08022c

    const v4, 0x7f020121

    invoke-direct {v1, v2, v3, v4}, Lcom/piriform/ccleaner/professional/i;-><init>(III)V

    .line 2131
    new-instance v2, Lcom/piriform/ccleaner/professional/i;

    const v3, 0x7f080233

    const v4, 0x7f080232

    const v5, 0x7f02012d

    invoke-direct {v2, v3, v4, v5}, Lcom/piriform/ccleaner/professional/i;-><init>(III)V

    .line 2136
    new-instance v3, Lcom/piriform/ccleaner/professional/i;

    const v4, 0x7f080231

    const v5, 0x7f080230

    const v6, 0x7f020118

    invoke-direct {v3, v4, v5, v6}, Lcom/piriform/ccleaner/professional/i;-><init>(III)V

    .line 2142
    iget-object v4, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2143
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2144
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->s:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2146
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/s;->d()V

    .line 3024
    const v0, 0x7f1000b4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/Button;

    .line 109
    new-instance v1, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$3;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$3;-><init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onStart()V

    .line 3156
    new-instance v0, Lcom/piriform/ccleaner/professional/i;

    const v1, 0x7f08022b

    const v2, 0x7f08022a

    const v3, 0x7f02011f

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/professional/i;-><init>(III)V

    .line 3161
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->o:Lcom/piriform/ccleaner/b/b/c;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/b/b/c;->a()Lf/d;

    move-result-object v1

    .line 3173
    new-instance v2, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$5;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$5;-><init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V

    .line 3162
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 3186
    new-instance v2, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$6;-><init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;Lcom/piriform/ccleaner/professional/i;)V

    .line 3163
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$4;-><init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;Lcom/piriform/ccleaner/professional/i;)V

    .line 3164
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/e;)Lf/j;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->t:Lf/j;

    .line 153
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onStop()V

    .line 204
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->t:Lf/j;

    .line 3210
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 204
    :goto_0
    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->t:Lf/j;

    invoke-interface {v0}, Lf/j;->b()V

    .line 207
    :cond_0
    return-void

    .line 3210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
