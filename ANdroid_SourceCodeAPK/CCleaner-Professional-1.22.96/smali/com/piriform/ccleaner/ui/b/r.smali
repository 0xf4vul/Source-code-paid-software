.class public final Lcom/piriform/ccleaner/ui/b/r;
.super Lcom/piriform/ccleaner/ui/b/d;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/b;


# instance fields
.field private final e:Lcom/piriform/ccleaner/ui/b/a;

.field private final f:Lcom/piriform/ccleaner/ui/b/a;

.field private g:Landroid/widget/ArrayAdapter;

.field private h:Landroid/widget/ArrayAdapter;

.field private final i:Lcom/piriform/ccleaner/a/a/t;

.field private final j:Lcom/piriform/ccleaner/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/a/t;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/ui/activity/MainActivity;)V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->f:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/b/d;-><init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/core/a/g;)V

    .line 52
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/r;->i:Lcom/piriform/ccleaner/a/a/t;

    .line 53
    iput-object p4, p0, Lcom/piriform/ccleaner/ui/b/r;->j:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    .line 55
    new-instance v0, Lcom/piriform/ccleaner/ui/b/a;

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->d:Lcom/piriform/ccleaner/n/a$a;

    invoke-direct {v0, p0, v1, p3}, Lcom/piriform/ccleaner/ui/b/a;-><init>(Lcom/piriform/ccleaner/core/b;Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/n/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/r;->e:Lcom/piriform/ccleaner/ui/b/a;

    .line 56
    new-instance v0, Lcom/piriform/ccleaner/ui/b/a;

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->e:Lcom/piriform/ccleaner/n/a$a;

    invoke-direct {v0, p0, v1, p3}, Lcom/piriform/ccleaner/ui/b/a;-><init>(Lcom/piriform/ccleaner/core/b;Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/n/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/r;->f:Lcom/piriform/ccleaner/ui/b/a;

    .line 57
    return-void
.end method

.method private static a(Landroid/view/View;IILjava/lang/String;Landroid/widget/ArrayAdapter;ILcom/piriform/ccleaner/ui/b/a;)V
    .locals 2

    .prologue
    .line 115
    .line 3016
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4016
    const v0, 0x7f100104

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5016
    const v0, 0x7f100106

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 6016
    const v0, 0x7f100107

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    check-cast v0, Landroid/widget/TextView;

    .line 124
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7016
    const v0, 0x7f100105

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/Spinner;

    .line 127
    invoke-virtual {v0, p4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 129
    invoke-virtual {p6}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    .line 7019
    iget v1, v1, Lcom/piriform/ccleaner/core/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 130
    invoke-virtual {v0, p6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/piriform/ccleaner/ui/main/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to create a view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/r;->e:Lcom/piriform/ccleaner/ui/b/a;

    .line 135
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/r;->f:Lcom/piriform/ccleaner/ui/b/a;

    .line 136
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v2

    .line 7143
    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/r;->i:Lcom/piriform/ccleaner/a/a/t;

    .line 8151
    iget-object v2, v1, Lcom/piriform/ccleaner/a/a/t;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8152
    iget-object v1, v1, Lcom/piriform/ccleaner/a/a/t;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/r;->j:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->s_()V

    .line 140
    return-void

    .line 7147
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7149
    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7150
    new-instance v3, Lcom/piriform/ccleaner/core/b/h;

    sget-object v4, Lcom/piriform/ccleaner/core/data/h;->c:Lcom/piriform/ccleaner/core/data/h;

    invoke-direct {v3, v1, v4}, Lcom/piriform/ccleaner/core/b/h;-><init>(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/h;)V

    .line 7154
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7157
    :cond_2
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7158
    new-instance v1, Lcom/piriform/ccleaner/core/b/h;

    sget-object v3, Lcom/piriform/ccleaner/core/data/h;->b:Lcom/piriform/ccleaner/core/data/h;

    invoke-direct {v1, v2, v3}, Lcom/piriform/ccleaner/core/b/h;-><init>(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/h;)V

    .line 7162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 10

    .prologue
    const v9, 0x7f090012

    const v4, 0x7f030081

    const v3, 0x7f030080

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1083
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/piriform/ccleaner/ui/b/r;->g:Landroid/widget/ArrayAdapter;

    .line 1084
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/b/r;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1085
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/piriform/ccleaner/ui/b/r;->h:Landroid/widget/ArrayAdapter;

    .line 1086
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/r;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2038
    iget-boolean v0, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 1169
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/b/r;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 1110
    :goto_0
    if-eqz v0, :cond_1

    move v0, v7

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/r;->i:Lcom/piriform/ccleaner/a/a/t;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/r;->e:Lcom/piriform/ccleaner/ui/b/a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/a/a/t;->a(Lcom/piriform/ccleaner/core/a;)I

    move-result v0

    .line 95
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, v9, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 96
    const v1, 0x7f1000fd

    const v2, 0x7f0800e8

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/b/r;->g:Landroid/widget/ArrayAdapter;

    const v5, 0x7f0200db

    iget-object v6, p0, Lcom/piriform/ccleaner/ui/b/r;->e:Lcom/piriform/ccleaner/ui/b/a;

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/piriform/ccleaner/ui/b/r;->a(Landroid/view/View;IILjava/lang/String;Landroid/widget/ArrayAdapter;ILcom/piriform/ccleaner/ui/b/a;)V

    .line 101
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/r;->i:Lcom/piriform/ccleaner/a/a/t;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/r;->f:Lcom/piriform/ccleaner/ui/b/a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/a/a/t;->b(Lcom/piriform/ccleaner/core/a;)I

    move-result v0

    .line 102
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, v9, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    const v1, 0x7f1000fe

    const v2, 0x7f080103

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/b/r;->h:Landroid/widget/ArrayAdapter;

    const v5, 0x7f0200d9

    iget-object v6, p0, Lcom/piriform/ccleaner/ui/b/r;->f:Lcom/piriform/ccleaner/ui/b/a;

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/piriform/ccleaner/ui/b/r;->a(Landroid/view/View;IILjava/lang/String;Landroid/widget/ArrayAdapter;ILcom/piriform/ccleaner/ui/b/a;)V

    .line 107
    return-void

    :cond_0
    move v0, v7

    .line 1169
    goto :goto_0

    .line 1110
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
