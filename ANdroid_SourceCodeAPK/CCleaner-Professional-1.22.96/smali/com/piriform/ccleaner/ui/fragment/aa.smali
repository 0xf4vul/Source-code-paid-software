.class public abstract Lcom/piriform/ccleaner/ui/fragment/aa;
.super Landroid/support/v4/app/h;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/a/h$a;
.implements Lcom/piriform/ccleaner/core/a/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/aa$a;,
        Lcom/piriform/ccleaner/ui/fragment/aa$c;,
        Lcom/piriform/ccleaner/ui/fragment/aa$d;,
        Lcom/piriform/ccleaner/ui/fragment/aa$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/piriform/ccleaner/a/a/a;",
        ">",
        "Landroid/support/v4/app/h;",
        "Lcom/piriform/ccleaner/core/a/h$a;",
        "Lcom/piriform/ccleaner/core/a/q;"
    }
.end annotation


# instance fields
.field protected aa:Landroid/view/View;

.field protected ab:Landroid/view/View;

.field protected ac:Lcom/piriform/ccleaner/core/a/h;

.field private b:I

.field private c:Lcom/piriform/ccleaner/ui/fragment/aa$d;

.field private d:Lcom/piriform/ccleaner/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected e:Landroid/widget/Button;

.field protected f:Landroid/widget/TextView;

.field protected g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

.field protected h:Landroid/widget/ExpandableListView;

.field protected i:Lcom/piriform/ccleaner/ui/view/InfoBarView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/aa;->e(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method private O()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->d:Lcom/piriform/ccleaner/a/a/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->u_()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/aa;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->b:I

    return v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/aa;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->b:I

    return p1
.end method


# virtual methods
.method public D_()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/h;->D_()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->c:Lcom/piriform/ccleaner/ui/fragment/aa$d;

    .line 117
    return-void
.end method

.method protected E_()V
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract I()Lcom/piriform/ccleaner/a/h;
.end method

.method protected abstract J()V
.end method

.method protected N()Lcom/piriform/ccleaner/core/a/h;
    .locals 6

    .prologue
    .line 139
    new-instance v0, Lcom/piriform/ccleaner/core/a/h;

    .line 140
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->g()Landroid/support/v4/app/i;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->g()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-static {v2}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v2

    .line 9133
    iget-object v2, v2, Lcom/piriform/ccleaner/CCleanerApplication;->b:Lcom/piriform/ccleaner/n/a;

    .line 141
    new-instance v4, Lcom/piriform/ccleaner/core/a/k;

    new-instance v3, Lcom/piriform/ccleaner/core/a/n;

    invoke-direct {v3}, Lcom/piriform/ccleaner/core/a/n;-><init>()V

    invoke-direct {v4, v3}, Lcom/piriform/ccleaner/core/a/k;-><init>(Lcom/piriform/ccleaner/core/a/f;)V

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/a/h;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/core/a/h$a;Lcom/piriform/ccleaner/core/a/k;Z)V

    return-object v0
.end method

.method public final R()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->notifyDataSetChanged()V

    .line 234
    :cond_0
    return-void
.end method

.method protected final S()Z
    .locals 2

    .prologue
    .line 241
    .line 9568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 241
    if-eqz v0, :cond_0

    .line 10568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 241
    const-string/jumbo v1, "ARG_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final T()V
    .locals 1

    .prologue
    .line 249
    .line 11245
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->c:Lcom/piriform/ccleaner/ui/fragment/aa$d;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 249
    :goto_0
    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->c:Lcom/piriform/ccleaner/ui/fragment/aa$d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/fragment/aa$d;->o_()V

    .line 252
    :cond_0
    return-void

    .line 11245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final U()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->h:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const v0, 0x7f030049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2016
    const v0, 0x7f1000e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->e:Landroid/widget/Button;

    .line 1150
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->e:Landroid/widget/Button;

    .line 2161
    new-instance v2, Lcom/piriform/ccleaner/ui/fragment/aa$1;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/fragment/aa$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/aa;)V

    .line 1150
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3016
    const v0, 0x7f1000e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1152
    check-cast v0, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    .line 4016
    const v0, 0x7f10008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1153
    check-cast v0, Lcom/piriform/ccleaner/ui/view/InfoBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->i:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    .line 5016
    const v0, 0x7f100139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1154
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->f:Landroid/widget/TextView;

    .line 6016
    const v0, 0x7f1000e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1155
    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->h:Landroid/widget/ExpandableListView;

    .line 7016
    const v0, 0x7f100138

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1156
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->aa:Landroid/view/View;

    .line 8016
    const v0, 0x7f100094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1157
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ab:Landroid/view/View;

    .line 8130
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->N()Lcom/piriform/ccleaner/core/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    .line 8132
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->h:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 8133
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->t_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8134
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->h:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/piriform/ccleaner/ui/fragment/aa$b;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/fragment/aa$b;-><init>(Lcom/piriform/ccleaner/ui/fragment/aa;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->d:Lcom/piriform/ccleaner/a/a/a;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Lcom/piriform/ccleaner/a/a/a;)V

    move-object v0, v1

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/app/Activity;)V

    .line 72
    instance-of v0, p1, Lcom/piriform/ccleaner/ui/fragment/aa$d;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/piriform/ccleaner/ui/fragment/aa$d;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/aa$d;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->c:Lcom/piriform/ccleaner/ui/fragment/aa$d;

    .line 1121
    invoke-static {p1}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 1128
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->a:Lcom/piriform/ccleaner/a/g;

    .line 1122
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->I()Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/a/g;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/a;

    .line 77
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->d:Lcom/piriform/ccleaner/a/a/a;

    .line 79
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->d:Lcom/piriform/ccleaner/a/a/a;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/aa;->b(Lcom/piriform/ccleaner/a/a/a;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected abstract a(Lcom/piriform/ccleaner/a/a/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    return-void
.end method

.method protected abstract b(Lcom/piriform/ccleaner/a/a/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-super {p0}, Landroid/support/v4/app/h;->e()V

    .line 104
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->e:Landroid/widget/Button;

    .line 105
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->f:Landroid/widget/TextView;

    .line 106
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    .line 107
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->h:Landroid/widget/ExpandableListView;

    .line 108
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->aa:Landroid/view/View;

    .line 109
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ab:Landroid/view/View;

    .line 110
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    .line 111
    return-void
.end method

.method protected abstract r_()Ljava/lang/String;
.end method

.method public final s_()V
    .locals 2

    .prologue
    .line 209
    .line 9218
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9219
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->i:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->r_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->E_()V

    .line 211
    return-void

    .line 9221
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->d()Ljava/util/List;

    move-result-object v0

    .line 9222
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa;->i:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected t_()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected u_()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method
