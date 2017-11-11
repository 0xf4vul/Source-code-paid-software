.class public Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/scheduler/h$a;


# instance fields
.field private final A:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private final B:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final C:Landroid/view/View$OnClickListener;

.field private final D:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

.field private final E:Landroid/view/View$OnClickListener;

.field private final F:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final G:Lcom/novoda/notils/e/a;

.field m:Lcom/piriform/ccleaner/scheduler/h;

.field n:Lcom/piriform/ccleaner/ui/d/a;

.field private o:Z

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/Switch;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;

.field private v:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

.field private w:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

.field private x:Landroid/app/TimePickerDialog;

.field private y:Landroid/widget/EditText;

.field private z:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->o:Z

    .line 59
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$1;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->A:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 65
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$2;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->B:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 71
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$3;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$3;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->C:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$4;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->D:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

    .line 83
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$5;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$5;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->E:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$6;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$6;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->F:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 95
    new-instance v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$7;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$7;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->G:Lcom/novoda/notils/e/a;

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)Landroid/app/TimePickerDialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->x:Landroid/app/TimePickerDialog;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 219
    invoke-static {p0, p1, p2}, Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/l/c;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->s:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->y:Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->d()Z

    move-result v0

    .line 10265
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->q:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 10270
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 10271
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->q:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 10273
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->q:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 10274
    :goto_0
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10275
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->u:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;

    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->setEnabled(Z)V

    .line 10276
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->v:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setEnabled(Z)V

    .line 10277
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->w:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setEnabled(Z)V

    .line 10278
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 201
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->b()Lcom/piriform/ccleaner/l/a;

    move-result-object v0

    .line 11228
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/l/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11229
    iget-object v3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->x:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/l/a;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/piriform/ccleaner/l/a;->b()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 202
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->e()Ljava/util/Set;

    move-result-object v0

    .line 11248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11249
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/h;

    .line 12226
    iget v0, v0, Lcom/piriform/ccleaner/a/h;->y:I

    .line 11250
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v0, v2

    .line 10273
    goto :goto_0

    .line 11252
    :cond_1
    const-string/jumbo v0, ", "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 11237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11238
    const v0, 0x7f08024e

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11239
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->v:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_2
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->f()Z

    move-result v0

    .line 12256
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->w:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setChecked(Z)V

    .line 12257
    if-eqz v0, :cond_4

    .line 12258
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->w:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    const v1, 0x7f080257

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setDescriptionText(I)V

    .line 204
    :goto_3
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->u:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;

    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->c()Lcom/piriform/ccleaner/l/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->setDaysSelected(Lcom/piriform/ccleaner/l/d;)V

    .line 205
    iget-boolean v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->o:Z

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->q:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->jumpDrawablesToCurrentState()V

    .line 207
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->w:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->jumpDrawablesToCurrentState()V

    .line 208
    iput-boolean v2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->o:Z

    .line 210
    :cond_2
    return-void

    .line 11241
    :cond_3
    const v3, 0x7f08027b

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11242
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->v:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12260
    :cond_4
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->w:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    const v1, 0x7f080256

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setDescriptionText(I)V

    goto :goto_3
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 214
    invoke-static {p0}, Lcom/novoda/notils/c/b/e;->a(Landroid/content/Context;)Lcom/novoda/notils/c/b/e;

    move-result-object v0

    const v1, 0x7f080247

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(I)V

    .line 215
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->finish()V

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    .line 107
    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->z:Ljava/lang/Long;

    .line 112
    :cond_0
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->setContentView(I)V

    .line 2024
    const v0, 0x7f1000a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->p:Landroid/widget/TextView;

    .line 3024
    const v0, 0x7f1000a1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->q:Landroid/widget/Switch;

    .line 4024
    const v0, 0x7f1000a2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    check-cast v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->u:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;

    .line 5024
    const v0, 0x7f1000a6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->s:Landroid/view/View;

    .line 6024
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->t:Landroid/view/View;

    .line 7024
    const v0, 0x7f1000a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    check-cast v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->v:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    .line 8024
    const v0, 0x7f1000a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    check-cast v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->w:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    .line 9024
    const v0, 0x7f1000a5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->y:Landroid/widget/EditText;

    .line 123
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->q:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->B:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->u:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->D:Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView;->setOnDaySelectionChangedListener(Lcom/piriform/ccleaner/scheduler/ScheduledCleanDaySelectionView$a;)V

    .line 126
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->v:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->w:Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->F:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanSettingView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->y:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->G:Lcom/novoda/notils/e/a;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->A:Landroid/app/TimePickerDialog$OnTimeSetListener;

    const/4 v5, 0x1

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->x:Landroid/app/TimePickerDialog;

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 151
    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 159
    const v1, 0x7f100182

    if-ne v0, v1, :cond_0

    .line 10168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08024c

    .line 10169
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080249

    .line 10170
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08024b

    .line 10172
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$9;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$9;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    .line 10171
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08024a

    .line 10180
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$8;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$8;-><init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V

    .line 10179
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 10188
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 161
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onPause()V

    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->m:Lcom/piriform/ccleaner/scheduler/h;

    .line 10063
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    if-eqz v1, :cond_0

    .line 10081
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    if-eqz v1, :cond_0

    .line 10082
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->a:Lcom/piriform/ccleaner/scheduler/n;

    iget-object v2, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    invoke-interface {v1, v2}, Lcom/piriform/ccleaner/scheduler/n;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;

    move-result-object v1

    invoke-virtual {v1}, Lf/d;->c()Lf/j;

    .line 10067
    :cond_0
    sget-object v1, Lcom/piriform/ccleaner/scheduler/h$a;->a:Lcom/piriform/ccleaner/scheduler/h$a;

    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    .line 10068
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->e:Lf/j;

    if-eqz v1, :cond_1

    .line 10069
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->e:Lf/j;

    invoke-interface {v1}, Lf/j;->b()V

    .line 10070
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->e:Lf/j;

    .line 146
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->m:Lcom/piriform/ccleaner/scheduler/h;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->z:Ljava/lang/Long;

    .line 9049
    iput-object p0, v0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    .line 9050
    if-nez v1, :cond_0

    .line 9051
    sget-object v1, Lcom/piriform/ccleaner/l/b;->j:Lcom/piriform/ccleaner/l/c;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/scheduler/h;->a(Lcom/piriform/ccleaner/l/c;)V

    :goto_0
    return-void

    .line 9075
    :cond_0
    iget-object v2, v0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    invoke-interface {v2}, Lcom/piriform/ccleaner/scheduler/h$a;->f()V

    .line 9076
    iget-object v2, v0, Lcom/piriform/ccleaner/scheduler/h;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v2, v1}, Lcom/piriform/ccleaner/scheduler/n;->a(Ljava/lang/Long;)Lf/d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/scheduler/h;->b:Lf/e;

    .line 9077
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/e;)Lf/j;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->e:Lf/j;

    goto :goto_0
.end method
