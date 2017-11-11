.class public final Lcom/piriform/ccleaner/ui/b/i;
.super Lcom/piriform/ccleaner/ui/b/d;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/b;


# instance fields
.field private final e:Lcom/piriform/ccleaner/ui/b/a;

.field private final f:Lcom/piriform/ccleaner/ui/b/a;

.field private final g:Lcom/piriform/ccleaner/ui/b/a;

.field private h:Landroid/widget/ArrayAdapter;

.field private i:Landroid/widget/ArrayAdapter;

.field private j:Landroid/widget/ArrayAdapter;

.field private final k:Lcom/piriform/ccleaner/a/a/j;

.field private final l:Lcom/piriform/ccleaner/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/a/j;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/ui/activity/MainActivity;)V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->h:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/b/d;-><init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/core/a/g;)V

    .line 53
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/i;->k:Lcom/piriform/ccleaner/a/a/j;

    .line 54
    iput-object p4, p0, Lcom/piriform/ccleaner/ui/b/i;->l:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    .line 56
    new-instance v0, Lcom/piriform/ccleaner/ui/b/a;

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->c:Lcom/piriform/ccleaner/n/a$a;

    invoke-direct {v0, p0, v1, p3}, Lcom/piriform/ccleaner/ui/b/a;-><init>(Lcom/piriform/ccleaner/core/b;Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/n/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->e:Lcom/piriform/ccleaner/ui/b/a;

    .line 57
    new-instance v0, Lcom/piriform/ccleaner/ui/b/a;

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->a:Lcom/piriform/ccleaner/n/a$a;

    invoke-direct {v0, p0, v1, p3}, Lcom/piriform/ccleaner/ui/b/a;-><init>(Lcom/piriform/ccleaner/core/b;Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/n/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->f:Lcom/piriform/ccleaner/ui/b/a;

    .line 58
    new-instance v0, Lcom/piriform/ccleaner/ui/b/a;

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->b:Lcom/piriform/ccleaner/n/a$a;

    invoke-direct {v0, p0, v1, p3}, Lcom/piriform/ccleaner/ui/b/a;-><init>(Lcom/piriform/ccleaner/core/b;Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/n/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->g:Lcom/piriform/ccleaner/ui/b/a;

    .line 59
    return-void
.end method

.method private static a(Landroid/view/View;IILjava/lang/String;Landroid/widget/ArrayAdapter;ILcom/piriform/ccleaner/ui/b/a;)V
    .locals 2

    .prologue
    .line 126
    .line 3016
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4016
    const v0, 0x7f100104

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    check-cast v0, Landroid/widget/ImageView;

    .line 129
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5016
    const v0, 0x7f100106

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    check-cast v0, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 6016
    const v0, 0x7f100107

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7016
    const v0, 0x7f100105

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/Spinner;

    .line 138
    invoke-virtual {v0, p4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    invoke-virtual {p6}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    .line 7019
    iget v1, v1, Lcom/piriform/ccleaner/core/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 141
    invoke-virtual {v0, p6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 142
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 63
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
    .locals 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->e:Lcom/piriform/ccleaner/ui/b/a;

    .line 146
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->f:Lcom/piriform/ccleaner/ui/b/a;

    .line 147
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v2

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->g:Lcom/piriform/ccleaner/ui/b/a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v3

    .line 7154
    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/piriform/ccleaner/core/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 149
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/i;->k:Lcom/piriform/ccleaner/a/a/j;

    .line 8127
    iget-object v2, v1, Lcom/piriform/ccleaner/a/a/j;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8128
    iget-object v1, v1, Lcom/piriform/ccleaner/a/a/j;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->l:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->s_()V

    .line 151
    return-void

    .line 7158
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7160
    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7161
    new-instance v4, Lcom/piriform/ccleaner/core/b/c$b;

    sget-object v5, Lcom/piriform/ccleaner/core/data/e;->d:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {v4, v1, v5}, Lcom/piriform/ccleaner/core/b/c$b;-><init>(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)V

    .line 7162
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7165
    :cond_2
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7166
    new-instance v1, Lcom/piriform/ccleaner/core/b/c$b;

    sget-object v4, Lcom/piriform/ccleaner/core/data/e;->c:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {v1, v2, v4}, Lcom/piriform/ccleaner/core/b/c$b;-><init>(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)V

    .line 7167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7170
    :cond_3
    invoke-virtual {v3}, Lcom/piriform/ccleaner/core/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7171
    new-instance v1, Lcom/piriform/ccleaner/core/b/c$b;

    sget-object v2, Lcom/piriform/ccleaner/core/data/e;->b:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {v1, v3, v2}, Lcom/piriform/ccleaner/core/b/c$b;-><init>(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)V

    .line 7172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 10

    .prologue
    const v9, 0x7f090006

    const v4, 0x7f030081

    const v3, 0x7f030080

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1085
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/piriform/ccleaner/ui/b/i;->h:Landroid/widget/ArrayAdapter;

    .line 1086
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/b/i;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1087
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/piriform/ccleaner/ui/b/i;->i:Landroid/widget/ArrayAdapter;

    .line 1088
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/b/i;->i:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1089
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/piriform/ccleaner/ui/b/i;->j:Landroid/widget/ArrayAdapter;

    .line 1090
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->j:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2038
    iget-boolean v0, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 1179
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/b/i;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 1121
    :goto_0
    if-eqz v0, :cond_1

    move v0, v7

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->k:Lcom/piriform/ccleaner/a/a/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/i;->e:Lcom/piriform/ccleaner/ui/b/a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/a/a/j;->a(Lcom/piriform/ccleaner/core/a;)I

    move-result v0

    .line 99
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, v9, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 100
    const v1, 0x7f1000ff

    const v2, 0x7f0800cd

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/b/i;->h:Landroid/widget/ArrayAdapter;

    const v5, 0x7f0200da

    iget-object v6, p0, Lcom/piriform/ccleaner/ui/b/i;->e:Lcom/piriform/ccleaner/ui/b/a;

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/piriform/ccleaner/ui/b/i;->a(Landroid/view/View;IILjava/lang/String;Landroid/widget/ArrayAdapter;ILcom/piriform/ccleaner/ui/b/a;)V

    .line 105
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->k:Lcom/piriform/ccleaner/a/a/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/i;->f:Lcom/piriform/ccleaner/ui/b/a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/a/a/j;->b(Lcom/piriform/ccleaner/core/a;)I

    move-result v0

    .line 106
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, v9, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    const v1, 0x7f1000fd

    const v2, 0x7f0800be

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/b/i;->i:Landroid/widget/ArrayAdapter;

    const v5, 0x7f0200db

    iget-object v6, p0, Lcom/piriform/ccleaner/ui/b/i;->f:Lcom/piriform/ccleaner/ui/b/a;

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/piriform/ccleaner/ui/b/i;->a(Landroid/view/View;IILjava/lang/String;Landroid/widget/ArrayAdapter;ILcom/piriform/ccleaner/ui/b/a;)V

    .line 112
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/i;->k:Lcom/piriform/ccleaner/a/a/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/i;->g:Lcom/piriform/ccleaner/ui/b/a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/b/a;->a()Lcom/piriform/ccleaner/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/a/a/j;->c(Lcom/piriform/ccleaner/core/a;)I

    move-result v0

    .line 113
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, v9, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 114
    const v1, 0x7f1000fe

    const v2, 0x7f0800d9

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/b/i;->j:Landroid/widget/ArrayAdapter;

    const v5, 0x7f0200d9

    iget-object v6, p0, Lcom/piriform/ccleaner/ui/b/i;->g:Lcom/piriform/ccleaner/ui/b/a;

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/piriform/ccleaner/ui/b/i;->a(Landroid/view/View;IILjava/lang/String;Landroid/widget/ArrayAdapter;ILcom/piriform/ccleaner/ui/b/a;)V

    .line 118
    return-void

    :cond_0
    move v0, v7

    .line 1179
    goto/16 :goto_0

    .line 1121
    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_1
.end method
