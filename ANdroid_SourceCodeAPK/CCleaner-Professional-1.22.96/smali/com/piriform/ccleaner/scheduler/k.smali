.class public final Lcom/piriform/ccleaner/scheduler/k;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/piriform/ccleaner/scheduler/i;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/piriform/ccleaner/scheduler/c;

.field private final f:Lcom/piriform/ccleaner/scheduler/d;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/piriform/ccleaner/scheduler/c;Lcom/piriform/ccleaner/scheduler/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;",
            "Lcom/piriform/ccleaner/scheduler/c;",
            "Lcom/piriform/ccleaner/scheduler/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/k;->b:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/piriform/ccleaner/scheduler/k;->c:Lcom/piriform/ccleaner/scheduler/c;

    .line 28
    iput-object p3, p0, Lcom/piriform/ccleaner/scheduler/k;->f:Lcom/piriform/ccleaner/scheduler/d;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 3

    .prologue
    .line 14
    .line 5034
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030065

    const/4 v2, 0x0

    .line 5035
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5036
    new-instance v1, Lcom/piriform/ccleaner/scheduler/i;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/scheduler/i;-><init>(Landroid/view/View;)V

    .line 14
    return-object v1
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 14
    check-cast p1, Lcom/piriform/ccleaner/scheduler/i;

    .line 1041
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/k;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/l/c;

    .line 1042
    iget-object v1, p1, Lcom/piriform/ccleaner/scheduler/i;->a:Landroid/view/View;

    check-cast v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;

    .line 1043
    iget-boolean v3, p0, Lcom/piriform/ccleaner/scheduler/k;->a:Z

    iget-object v4, p0, Lcom/piriform/ccleaner/scheduler/k;->c:Lcom/piriform/ccleaner/scheduler/c;

    iget-object v5, p0, Lcom/piriform/ccleaner/scheduler/k;->f:Lcom/piriform/ccleaner/scheduler/d;

    .line 1066
    iget-object v2, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->e:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/piriform/ccleaner/l/c;->b()Lcom/piriform/ccleaner/l/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/piriform/ccleaner/l/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    invoke-interface {v0}, Lcom/piriform/ccleaner/l/c;->g()Ljava/lang/String;

    move-result-object v2

    .line 1091
    iget-object v6, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1093
    iget-object v2, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    iget-object v2, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->i:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    :goto_0
    iget-object v2, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->f:Landroid/support/v7/widget/SwitchCompat;

    invoke-interface {v0}, Lcom/piriform/ccleaner/l/c;->d()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1069
    invoke-interface {v0}, Lcom/piriform/ccleaner/l/c;->c()Lcom/piriform/ccleaner/l/d;

    move-result-object v2

    .line 1102
    iget-object v6, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->j:Lcom/piriform/ccleaner/scheduler/r;

    .line 3037
    sget-object v7, Lcom/piriform/ccleaner/scheduler/b;->h:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/piriform/ccleaner/l/d;->a(Ljava/util/Collection;)Z

    move-result v7

    .line 2053
    if-eqz v7, :cond_1

    .line 2054
    iget-object v2, v6, Lcom/piriform/ccleaner/scheduler/r;->a:Landroid/content/res/Resources;

    const v6, 0x7f08024f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1103
    :goto_1
    iget-object v6, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->g:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    invoke-virtual {v1, v3}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->setEnabled(Z)V

    .line 1071
    new-instance v2, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$1;

    invoke-direct {v2, v1, v4, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$1;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;Lcom/piriform/ccleaner/scheduler/c;Lcom/piriform/ccleaner/l/c;)V

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    iget-object v2, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->f:Landroid/support/v7/widget/SwitchCompat;

    new-instance v3, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$2;

    invoke-direct {v3, v1, v5, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$2;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;Lcom/piriform/ccleaner/scheduler/d;Lcom/piriform/ccleaner/l/c;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14
    return-void

    .line 1096
    :cond_0
    iget-object v2, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1097
    iget-object v2, v1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;->i:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3041
    :cond_1
    sget-object v7, Lcom/piriform/ccleaner/scheduler/b;->i:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/piriform/ccleaner/l/d;->a(Ljava/util/Collection;)Z

    move-result v7

    .line 2057
    if-eqz v7, :cond_2

    .line 2058
    iget-object v2, v6, Lcom/piriform/ccleaner/scheduler/r;->a:Landroid/content/res/Resources;

    const v6, 0x7f080251

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3045
    :cond_2
    sget-object v7, Lcom/piriform/ccleaner/scheduler/b;->j:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/piriform/ccleaner/l/d;->a(Ljava/util/Collection;)Z

    move-result v7

    .line 2061
    if-eqz v7, :cond_3

    .line 2062
    iget-object v2, v6, Lcom/piriform/ccleaner/scheduler/r;->a:Landroid/content/res/Resources;

    const v6, 0x7f080252

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3072
    :cond_3
    iget-object v7, v2, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v7}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v7

    .line 2065
    if-eqz v7, :cond_4

    .line 2066
    iget-object v2, v6, Lcom/piriform/ccleaner/scheduler/r;->a:Landroid/content/res/Resources;

    const v6, 0x7f080250

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4023
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4024
    invoke-virtual {v2}, Lcom/piriform/ccleaner/l/d;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/scheduler/b;

    .line 4094
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 4098
    invoke-virtual {v2, v8}, Lcom/piriform/ccleaner/scheduler/b;->b(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 4099
    sget-object v8, Lcom/piriform/ccleaner/scheduler/b;->k:Lcom/novoda/notils/a/a;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/novoda/notils/a/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 4026
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", "

    .line 4027
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4030
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v7, 0x2

    if-le v2, v7, :cond_6

    .line 4031
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4033
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
