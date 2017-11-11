.class public Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:Landroid/widget/CheckBox;

.field private final f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView$1;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->f:Landroid/view/View$OnClickListener;

    .line 39
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setOrientation(I)V

    .line 40
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setGravity(I)V

    .line 1065
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1067
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->c:Landroid/graphics/drawable/Drawable;

    .line 1068
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1073
    sget-object v0, Lcom/piriform/ccleaner/h$a;->ScheduledCleanSettingView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1075
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1077
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1078
    return-void

    .line 1070
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1077
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1065
    :array_0
    .array-data 4
        0x1010119
        0x101014f
    .end array-data
.end method

.method static synthetic a(Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->f:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030097

    invoke-static {v0, v1, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2016
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 3016
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    check-cast v1, Landroid/widget/ImageView;

    .line 4016
    const v2, 0x1020015

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 88
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->b:Landroid/widget/TextView;

    .line 5016
    const v2, 0x7f10006c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 89
    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->e:Landroid/widget/CheckBox;

    .line 91
    iget-object v2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->e:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 94
    iget-boolean v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->d:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->a()V

    .line 97
    :cond_0
    return-void

    .line 93
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    return-void
.end method

.method public setDescriptionText(I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method

.method public setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 112
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 101
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->d:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->a()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
