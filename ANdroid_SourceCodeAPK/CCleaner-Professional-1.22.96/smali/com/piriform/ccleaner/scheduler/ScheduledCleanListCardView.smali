.class public Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;
.super Landroid/support/v7/widget/CardView;
.source "SourceFile"


# instance fields
.field final e:Landroid/widget/TextView;

.field final f:Landroid/support/v7/widget/SwitchCompat;

.field final g:Landroid/widget/TextView;

.field final h:Landroid/widget/TextView;

.field final i:Landroid/view/View;

.field final j:Lcom/piriform/ccleaner/scheduler/r;

.field private final k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const v3, 0x7f100174

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Lcom/piriform/ccleaner/scheduler/r;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/scheduler/r;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->j:Lcom/piriform/ccleaner/scheduler/r;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030096

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1016
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->h:Landroid/widget/TextView;

    .line 2016
    const v0, 0x7f100170

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->e:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/piriform/ccleaner/l/a;->a(II)Lcom/piriform/ccleaner/l/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/piriform/ccleaner/l/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3016
    const v0, 0x7f100171

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->g:Landroid/widget/TextView;

    .line 4016
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->k:Landroid/widget/TextView;

    .line 5016
    const v0, 0x7f100173

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->i:Landroid/view/View;

    .line 6016
    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->f:Landroid/support/v7/widget/SwitchCompat;

    .line 48
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/widget/CardView;->setEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->f:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->f:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setClickable(Z)V

    .line 58
    return-void
.end method
