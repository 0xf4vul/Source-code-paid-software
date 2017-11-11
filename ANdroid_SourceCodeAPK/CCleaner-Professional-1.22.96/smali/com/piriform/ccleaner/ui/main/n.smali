.class public final Lcom/piriform/ccleaner/ui/main/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/piriform/ccleaner/core/i;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/i;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 1076
    iget-wide v0, p1, Lcom/piriform/ccleaner/core/i;->b:J

    .line 16
    invoke-static {v0, v1}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/n;->c:Landroid/content/res/Resources;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    if-eqz p1, :cond_2

    .line 2058
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->c:Landroid/content/res/Resources;

    const v1, 0x7f090024

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 3068
    iget v2, v2, Lcom/piriform/ccleaner/core/i;->a:I

    .line 2061
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 4068
    iget v4, v4, Lcom/piriform/ccleaner/core/i;->a:I

    .line 2062
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/n;->b:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 2059
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->c:Landroid/content/res/Resources;

    const v1, 0x7f090022

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 5068
    iget v2, v2, Lcom/piriform/ccleaner/core/i;->a:I

    .line 2068
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 6068
    iget v4, v4, Lcom/piriform/ccleaner/core/i;->a:I

    .line 2069
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/n;->b:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 2066
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2073
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->c:Landroid/content/res/Resources;

    const v1, 0x7f080140

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/main/n;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7035
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/i;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7036
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->c:Landroid/content/res/Resources;

    const v1, 0x7f090023

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 7068
    iget v2, v2, Lcom/piriform/ccleaner/core/i;->a:I

    .line 7038
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 8068
    iget v4, v4, Lcom/piriform/ccleaner/core/i;->a:I

    .line 7039
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/n;->b:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 7036
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7042
    :cond_3
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/i;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7043
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->c:Landroid/content/res/Resources;

    const v1, 0x7f090001

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 9068
    iget v2, v2, Lcom/piriform/ccleaner/core/i;->a:I

    .line 7045
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/n;->a:Lcom/piriform/ccleaner/core/i;

    .line 10068
    iget v4, v4, Lcom/piriform/ccleaner/core/i;->a:I

    .line 7046
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/n;->b:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 7043
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7050
    :cond_4
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/n;->c:Landroid/content/res/Resources;

    const v1, 0x7f08005d

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/main/n;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
