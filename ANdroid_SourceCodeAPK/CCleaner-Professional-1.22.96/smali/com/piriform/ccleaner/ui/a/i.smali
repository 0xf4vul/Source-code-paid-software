.class public final Lcom/piriform/ccleaner/ui/a/i;
.super Lcom/piriform/ccleaner/ui/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/a/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/ui/a/f;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private h:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/a/i$a;)V
    .locals 1

    .prologue
    .line 66
    .line 1151
    iget-object v0, p1, Lcom/piriform/ccleaner/ui/a/i$a;->h:Ljava/util/List;

    .line 66
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/a/a;-><init>(Ljava/util/List;)V

    .line 2151
    iget-object v0, p1, Lcom/piriform/ccleaner/ui/a/i$a;->d:Lcom/piriform/ccleaner/ui/a/f;

    .line 67
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/i;->a:Lcom/piriform/ccleaner/ui/a/f;

    .line 3151
    iget v0, p1, Lcom/piriform/ccleaner/ui/a/i$a;->a:I

    .line 68
    iput v0, p0, Lcom/piriform/ccleaner/ui/a/i;->b:I

    .line 4151
    iget v0, p1, Lcom/piriform/ccleaner/ui/a/i$a;->b:I

    .line 69
    iput v0, p0, Lcom/piriform/ccleaner/ui/a/i;->c:I

    .line 5151
    iget v0, p1, Lcom/piriform/ccleaner/ui/a/i$a;->e:I

    .line 70
    iput v0, p0, Lcom/piriform/ccleaner/ui/a/i;->d:I

    .line 6151
    iget v0, p1, Lcom/piriform/ccleaner/ui/a/i$a;->f:I

    .line 71
    iput v0, p0, Lcom/piriform/ccleaner/ui/a/i;->e:I

    .line 7151
    iget v0, p1, Lcom/piriform/ccleaner/ui/a/i$a;->g:I

    .line 72
    iput v0, p0, Lcom/piriform/ccleaner/ui/a/i;->f:I

    .line 8151
    iget-object v0, p1, Lcom/piriform/ccleaner/ui/a/i$a;->c:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/i;->g:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private static a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x0

    .line 108
    if-eqz p2, :cond_0

    .line 109
    invoke-static {p0, p2}, Landroid/support/v4/b/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/Class;ILjava/lang/String;I)Lcom/piriform/ccleaner/ui/a/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/piriform/ccleaner/ui/a/i$a;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/piriform/ccleaner/ui/a/i$a;

    new-instance v1, Lcom/piriform/ccleaner/ui/a/b;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/a/b;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/piriform/ccleaner/ui/a/i$a;-><init>(IILjava/lang/String;Lcom/piriform/ccleaner/ui/a/f;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    if-nez p1, :cond_0

    .line 9102
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9103
    const v2, 0x7f030041

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10016
    :cond_0
    const v0, 0x7f1000c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/i;->h:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/i;->h:Landroid/widget/TextView;

    iget v2, p0, Lcom/piriform/ccleaner/ui/a/i;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 89
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 10116
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/i;->h:Landroid/widget/TextView;

    iget v0, p0, Lcom/piriform/ccleaner/ui/a/i;->e:I

    if-nez v0, :cond_1

    const v0, 0x7f02006f

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10120
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/i;->h:Landroid/widget/TextView;

    iget v0, p0, Lcom/piriform/ccleaner/ui/a/i;->f:I

    if-nez v0, :cond_2

    const v0, 0x7f0e0049

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    iget v2, p0, Lcom/piriform/ccleaner/ui/a/i;->c:I

    invoke-static {v1, v0, v2}, Lcom/piriform/ccleaner/ui/a/i;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    iget v3, p0, Lcom/piriform/ccleaner/ui/a/i;->d:I

    invoke-static {v1, v0, v3}, Lcom/piriform/ccleaner/ui/a/i;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/i;->h:Landroid/widget/TextView;

    invoke-static {v1, v2, v4, v0, v4}, Landroid/support/v4/widget/o;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-object p1

    .line 10116
    :cond_1
    iget v0, p0, Lcom/piriform/ccleaner/ui/a/i;->e:I

    goto :goto_0

    .line 10120
    :cond_2
    iget v0, p0, Lcom/piriform/ccleaner/ui/a/i;->f:I

    goto :goto_1
.end method

.method public final a(Lcom/piriform/ccleaner/ui/a/c;Lcom/piriform/ccleaner/ui/a/j;Lcom/piriform/ccleaner/b/a;)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/i;->a:Lcom/piriform/ccleaner/ui/a/f;

    invoke-interface {v0, p1, p2}, Lcom/piriform/ccleaner/ui/a/f;->a(Lcom/piriform/ccleaner/ui/a/c;Lcom/piriform/ccleaner/ui/a/j;)V

    .line 141
    sget-object v0, Lcom/piriform/ccleaner/b/b;->d:Lcom/piriform/ccleaner/b/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/i;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {p3, v0, v1, v2, v3}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 10148
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/i;->g:Ljava/lang/String;

    const-string/jumbo v1, "Upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/piriform/ccleaner/b/b;->aw:Lcom/piriform/ccleaner/b/b;

    invoke-interface {p3, v0}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 145
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/piriform/ccleaner/ui/a/c;)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/i;->a:Lcom/piriform/ccleaner/ui/a/f;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/ui/a/f;->a(Lcom/piriform/ccleaner/ui/a/c;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method
