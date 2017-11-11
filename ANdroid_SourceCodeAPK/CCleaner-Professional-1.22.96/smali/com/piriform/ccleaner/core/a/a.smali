.class public final Lcom/piriform/ccleaner/core/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/d/a/t;


# direct methods
.method public constructor <init>(Lcom/d/a/t;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/a;->a:Lcom/d/a/t;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/a;->a:Lcom/d/a/t;

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1292
    if-nez v0, :cond_0

    .line 1293
    new-instance v0, Lcom/d/a/x;

    invoke-direct {v0, v1, v3}, Lcom/d/a/x;-><init>(Lcom/d/a/t;Landroid/net/Uri;)V

    .line 3106
    :goto_0
    iget-boolean v1, v0, Lcom/d/a/x;->c:Z

    if-nez v1, :cond_2

    .line 3107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1298
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2272
    new-instance v0, Lcom/d/a/x;

    invoke-direct {v0, v1, v2}, Lcom/d/a/x;-><init>(Lcom/d/a/t;Landroid/net/Uri;)V

    goto :goto_0

    .line 3112
    :cond_2
    iget-object v1, v0, Lcom/d/a/x;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 3113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3115
    :cond_3
    const v1, 0x7f02014d

    iput v1, v0, Lcom/d/a/x;->d:I

    .line 3590
    invoke-virtual {v0, p1, v3}, Lcom/d/a/x;->a(Landroid/widget/ImageView;Lcom/d/a/e;)V

    .line 21
    return-void
.end method
