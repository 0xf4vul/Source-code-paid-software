.class public Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;
.super Landroid/support/v4/app/h;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/settings/analysis/a$b;


# instance fields
.field a:Lcom/piriform/ccleaner/n/a;

.field private aa:Lcom/piriform/ccleaner/settings/analysis/b;

.field private ab:Lcom/piriform/ccleaner/settings/analysis/c;

.field b:Lcom/piriform/ccleaner/a/e;

.field c:Lcom/piriform/ccleaner/scheduler/n;

.field d:Ljava/util/concurrent/Executor;

.field e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

.field f:Lcom/piriform/ccleaner/settings/analysis/a$a;

.field private g:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

.field private h:Lcom/piriform/ccleaner/settings/analysis/a;

.field private i:Lcom/novoda/notils/c/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/cleaning/g;Ljava/lang/Long;)Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/piriform/ccleaner/cleaning/g;Ljava/lang/Long;)Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;
    .locals 6

    .prologue
    .line 56
    new-instance v0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-direct {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string/jumbo v2, "cleanType"

    .line 1027
    iget-object v3, p0, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string/jumbo v2, "scheduledCleanId"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 63
    :cond_0
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Lcom/piriform/ccleaner/settings/analysis/a;)Lcom/piriform/ccleaner/settings/analysis/a;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->h:Lcom/piriform/ccleaner/settings/analysis/a;

    return-object p1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->aa:Lcom/piriform/ccleaner/settings/analysis/b;

    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Lcom/piriform/ccleaner/cleaning/g;J)Lcom/piriform/ccleaner/settings/analysis/c;
    .locals 2

    .prologue
    .line 34
    .line 7119
    sget-object v0, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    if-ne p1, v0, :cond_0

    .line 7120
    new-instance v0, Lcom/piriform/ccleaner/settings/analysis/f;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->c:Lcom/piriform/ccleaner/scheduler/n;

    invoke-direct {v0, v1, p2, p3}, Lcom/piriform/ccleaner/settings/analysis/f;-><init>(Lcom/piriform/ccleaner/scheduler/n;J)V

    :goto_0
    return-object v0

    .line 7122
    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/settings/analysis/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a:Lcom/piriform/ccleaner/n/a;

    invoke-direct {v0, v1, p1}, Lcom/piriform/ccleaner/settings/analysis/e;-><init>(Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/cleaning/g;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Lcom/piriform/ccleaner/settings/analysis/c;)Lcom/piriform/ccleaner/settings/analysis/c;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->ab:Lcom/piriform/ccleaner/settings/analysis/c;

    return-object p1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 34
    .line 8106
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->g()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;-><init>(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)J
    .locals 2

    .prologue
    .line 34
    .line 6568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 6127
    const-string/jumbo v1, "scheduledCleanId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 34
    return-wide v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->ab:Lcom/piriform/ccleaner/settings/analysis/c;

    return-object v0
.end method

.method static synthetic d(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->h:Lcom/piriform/ccleaner/settings/analysis/a;

    return-object v0
.end method

.method static synthetic e(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/ui/view/HeaderGridView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->g:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    return-object v0
.end method

.method static synthetic f(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/a$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->f:Lcom/piriform/ccleaner/settings/analysis/a$a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 136
    const v0, 0x7f030048

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3016
    const v0, 0x7f1000e5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->g:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    .line 4016
    const v0, 0x7f1000e4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3211
    check-cast v0, Landroid/widget/TextView;

    .line 3212
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3213
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3215
    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->aa:Lcom/piriform/ccleaner/settings/analysis/b;

    .line 4068
    iget v1, v1, Lcom/piriform/ccleaner/settings/analysis/b;->f:I

    .line 3215
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3217
    iget-object v3, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->g:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    .line 4112
    invoke-virtual {v3}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 4114
    if-eqz v1, :cond_0

    instance-of v4, v1, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    if-nez v4, :cond_0

    .line 4115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4119
    :cond_0
    new-instance v4, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;

    invoke-direct {v4, v7}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;-><init>(B)V

    .line 4120
    new-instance v5, Lcom/piriform/ccleaner/ui/view/HeaderGridView$c;

    invoke-virtual {v3}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$c;-><init>(Lcom/piriform/ccleaner/ui/view/HeaderGridView;Landroid/content/Context;)V

    .line 4121
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4122
    iput-object v5, v4, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;->a:Landroid/view/ViewGroup;

    .line 4123
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;->b:Ljava/lang/Object;

    .line 4124
    iput-boolean v7, v4, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;->c:Z

    .line 4125
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4129
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 4130
    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    .line 4404
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 5016
    :cond_1
    const v0, 0x7f1000e6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    check-cast v0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    .line 140
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->setMessage(I)V

    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    new-instance v1, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$3;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$3;-><init>(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)V

    .line 5069
    new-instance v3, Lcom/piriform/ccleaner/ui/view/WarningDialogView$2;

    invoke-direct {v3, v0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView$2;-><init>(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)V

    .line 5077
    iput-object v1, v0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a:Lcom/piriform/ccleaner/ui/view/WarningDialogView$a;

    .line 5078
    const v1, 0x7f0800d2

    const v4, 0x7f10017a

    invoke-virtual {v0, v1, v4, v3}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a(IILandroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    const v1, 0x7f08013d

    new-instance v3, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$4;

    invoke-direct {v3, p0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$4;-><init>(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)V

    invoke-virtual {v0, v1, v3}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a(ILcom/piriform/ccleaner/ui/view/WarningDialogView$b;)V

    .line 161
    return-object v2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->i:Lcom/novoda/notils/c/b/c;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->aa:Lcom/piriform/ccleaner/settings/analysis/b;

    .line 6072
    iget v1, v1, Lcom/piriform/ccleaner/settings/analysis/b;->g:I

    .line 188
    invoke-interface {v0, v1}, Lcom/novoda/notils/c/b/c;->a(I)V

    .line 189
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)V

    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 1131
    const-string/jumbo v1, "cleanType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/piriform/ccleaner/settings/analysis/b;->a:Lcom/piriform/ccleaner/settings/analysis/b;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/settings/analysis/b;->a(Ljava/lang/String;Lcom/piriform/ccleaner/settings/analysis/b;)Lcom/piriform/ccleaner/settings/analysis/b;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->aa:Lcom/piriform/ccleaner/settings/analysis/b;

    .line 77
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->g()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/novoda/notils/c/b/d;->a(Landroid/content/Context;)Lcom/novoda/notils/c/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->i:Lcom/novoda/notils/c/b/c;

    .line 79
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->g()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->aa:Lcom/piriform/ccleaner/settings/analysis/b;

    .line 2064
    iget v1, v1, Lcom/piriform/ccleaner/settings/analysis/b;->e:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setTitle(I)V

    .line 80
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/settings/analysis/a$a;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->f:Lcom/piriform/ccleaner/settings/analysis/a$a;

    .line 194
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    .line 6089
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getShowingAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 195
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-super {p0}, Landroid/support/v4/app/h;->e()V

    .line 175
    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->g:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    .line 176
    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    .line 177
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v4/app/h;->q()V

    .line 2089
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;-><init>(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/h;->r()V

    .line 167
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->ab:Lcom/piriform/ccleaner/settings/analysis/c;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->ab:Lcom/piriform/ccleaner/settings/analysis/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/settings/analysis/c;->b()V

    .line 170
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-super {p0}, Landroid/support/v4/app/h;->s()V

    .line 182
    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->h:Lcom/piriform/ccleaner/settings/analysis/a;

    .line 183
    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->i:Lcom/novoda/notils/c/b/c;

    .line 184
    return-void
.end method
