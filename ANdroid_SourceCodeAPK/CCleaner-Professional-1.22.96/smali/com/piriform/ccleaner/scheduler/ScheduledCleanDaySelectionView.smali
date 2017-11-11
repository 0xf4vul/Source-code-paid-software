.class public Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

.field private final c:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->a:Ljava/util/List;

    .line 25
    sget-object v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->b:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

    .line 27
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$1;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 41
    invoke-direct {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->a()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;)Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->b:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

    return-object v0
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 46
    invoke-static {}, Lcom/piriform/ccleaner/scheduler/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/scheduler/b;

    .line 47
    const v1, 0x7f030066

    invoke-virtual {v2, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1016
    const v1, 0x7f10006c

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/CheckBox;

    .line 49
    iget-object v5, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 1090
    invoke-virtual {v0, v5}, Lcom/piriform/ccleaner/scheduler/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v5, 0x7f10000d

    invoke-virtual {v1, v5, v0}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 1103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/piriform/ccleaner/scheduler/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    invoke-virtual {p0, v4}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public setDaysSelected(Lcom/piriform/ccleaner/l/d;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 64
    const v1, 0x7f10000d

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/scheduler/b;

    .line 2052
    iget-object v3, p1, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v3, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public setOnDaySelectionChangedListener(Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;)V
    .locals 0

    .prologue
    .line 59
    if-nez p1, :cond_0

    sget-object p1, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->b:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

    .line 60
    return-void
.end method
