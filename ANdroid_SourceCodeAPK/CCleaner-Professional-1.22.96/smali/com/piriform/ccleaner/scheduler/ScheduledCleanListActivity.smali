.class public Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;
.super Lcom/piriform/ccleaner/ui/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/p$a;
.implements Lcom/piriform/ccleaner/scheduler/l$a;


# instance fields
.field m:Lcom/piriform/ccleaner/scheduler/l;

.field n:Lcom/piriform/ccleaner/professional/p;

.field o:Lcom/piriform/ccleaner/b/a;

.field private p:Landroid/support/v7/widget/RecyclerView;

.field private q:Landroid/support/design/widget/FloatingActionButton;

.field private s:Lcom/piriform/ccleaner/professional/ui/b;

.field private final t:Lcom/piriform/ccleaner/professional/ui/a;

.field private final u:Lcom/piriform/ccleaner/scheduler/c;

.field private final v:Lcom/piriform/ccleaner/scheduler/d;

.field private final w:Landroid/view/View$OnClickListener;

.field private final x:Lcom/piriform/ccleaner/professional/p$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/a/c;-><init>()V

    .line 43
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/professional/ui/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->t:Lcom/piriform/ccleaner/professional/ui/a;

    .line 45
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$1;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->u:Lcom/piriform/ccleaner/scheduler/c;

    .line 51
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$2;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->v:Lcom/piriform/ccleaner/scheduler/d;

    .line 57
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$3;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$3;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->w:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$4;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->x:Lcom/piriform/ccleaner/professional/p$c;

    return-void
.end method


# virtual methods
.method public final B_()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->s:Lcom/piriform/ccleaner/professional/ui/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/ui/b;->a()V

    .line 148
    return-void
.end method

.method public final C_()V
    .locals 0

    .prologue
    .line 158
    .line 19142
    invoke-static {p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->a(Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->t:Lcom/piriform/ccleaner/professional/ui/a;

    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/professional/ui/a;->a(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/professional/m;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->s:Lcom/piriform/ccleaner/professional/ui/b;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/professional/ui/b;->a(Lcom/piriform/ccleaner/professional/m;)V

    .line 153
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->q:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Lcom/piriform/ccleaner/professional/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/piriform/ccleaner/scheduler/k;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->u:Lcom/piriform/ccleaner/scheduler/c;

    iget-object v2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->v:Lcom/piriform/ccleaner/scheduler/d;

    invoke-direct {v0, p1, v1, v2}, Lcom/piriform/ccleaner/scheduler/k;-><init>(Ljava/util/List;Lcom/piriform/ccleaner/scheduler/c;Lcom/piriform/ccleaner/scheduler/d;)V

    .line 18052
    iput-boolean p2, v0, Lcom/piriform/ccleaner/scheduler/k;->a:Z

    .line 18636
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 127
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 128
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 142
    invoke-static {p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->a(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 132
    invoke-static {p0}, Lcom/novoda/notils/c/b/e;->a(Landroid/content/Context;)Lcom/novoda/notils/c/b/e;

    move-result-object v0

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(I)V

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;)V

    .line 85
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->setContentView(I)V

    .line 13024
    const v0, 0x7f1000a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->p:Landroid/support/v7/widget/RecyclerView;

    .line 88
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->p:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 90
    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->p:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/piriform/ccleaner/ui/view/l;

    invoke-direct {v2, v0, v0}, Lcom/piriform/ccleaner/ui/view/l;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 14024
    const v0, 0x7f1000a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->q:Landroid/support/design/widget/FloatingActionButton;

    .line 94
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->q:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15024
    const v0, 0x7f1000a9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    check-cast v0, Lcom/piriform/ccleaner/professional/ui/b;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->s:Lcom/piriform/ccleaner/professional/ui/b;

    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->n:Lcom/piriform/ccleaner/professional/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->s:Lcom/piriform/ccleaner/professional/ui/b;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/professional/p;->a(Lcom/piriform/ccleaner/professional/ui/b;)V

    .line 98
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onPause()V

    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->n:Lcom/piriform/ccleaner/professional/p;

    .line 17058
    sget-object v1, Lcom/piriform/ccleaner/professional/p$a;->a:Lcom/piriform/ccleaner/professional/p$a;

    iput-object v1, v0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->m:Lcom/piriform/ccleaner/scheduler/l;

    .line 17091
    sget-object v1, Lcom/piriform/ccleaner/scheduler/l$a;->a:Lcom/piriform/ccleaner/scheduler/l$a;

    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->d:Lcom/piriform/ccleaner/scheduler/l$a;

    .line 17092
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->f:Lf/j;

    if-eqz v1, :cond_0

    .line 17093
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->f:Lf/j;

    invoke-interface {v1}, Lf/j;->b()V

    .line 17094
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->f:Lf/j;

    .line 112
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->n:Lcom/piriform/ccleaner/professional/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->x:Lcom/piriform/ccleaner/professional/p$c;

    invoke-virtual {v0, p0, v1}, Lcom/piriform/ccleaner/professional/p;->a(Lcom/piriform/ccleaner/professional/p$a;Lcom/piriform/ccleaner/professional/p$c;)V

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->m:Lcom/piriform/ccleaner/scheduler/l;

    new-instance v1, Lcom/piriform/ccleaner/scheduler/e;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/scheduler/e;-><init>(Landroid/app/Activity;)V

    .line 15099
    iput-object p0, v0, Lcom/piriform/ccleaner/scheduler/l;->d:Lcom/piriform/ccleaner/scheduler/l$a;

    .line 15100
    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->e:Lcom/piriform/ccleaner/scheduler/m;

    .line 15103
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->g:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15104
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->a:Lcom/piriform/ccleaner/scheduler/n;

    .line 15105
    invoke-interface {v1}, Lcom/piriform/ccleaner/scheduler/n;->a()Lf/d;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/scheduler/l$3;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/scheduler/l$3;-><init>(Lcom/piriform/ccleaner/scheduler/l;)V

    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v1

    .line 16073
    new-instance v2, Lcom/piriform/ccleaner/p/c$3;

    invoke-direct {v2}, Lcom/piriform/ccleaner/p/c$3;-><init>()V

    .line 15110
    invoke-virtual {v1, v2}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 15111
    iget-object v2, v0, Lcom/piriform/ccleaner/scheduler/l;->b:Lcom/piriform/ccleaner/professional/g;

    invoke-interface {v2}, Lcom/piriform/ccleaner/professional/g;->a()Lf/d;

    move-result-object v2

    new-instance v3, Lcom/piriform/ccleaner/scheduler/l$5;

    invoke-direct {v3, v0}, Lcom/piriform/ccleaner/scheduler/l$5;-><init>(Lcom/piriform/ccleaner/scheduler/l;)V

    .line 15112
    invoke-virtual {v2, v3}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v2

    .line 16084
    new-instance v3, Lcom/piriform/ccleaner/p/c$4;

    invoke-direct {v3}, Lcom/piriform/ccleaner/p/c$4;-><init>()V

    .line 16651
    invoke-static {v2, v1, v3}, Lf/d;->b(Lf/d;Lf/d;Lf/c/f;)Lf/d;

    move-result-object v1

    .line 15118
    new-instance v2, Lcom/piriform/ccleaner/scheduler/l$4;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/scheduler/l$4;-><init>(Lcom/piriform/ccleaner/scheduler/l;)V

    .line 15119
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v1

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/l;->h:Lf/e;

    .line 15126
    invoke-virtual {v1, v0}, Lf/d;->a(Lf/e;)Lf/j;

    .line 105
    return-void
.end method
