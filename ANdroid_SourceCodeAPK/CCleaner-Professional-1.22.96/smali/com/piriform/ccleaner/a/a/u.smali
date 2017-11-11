.class public final Lcom/piriform/ccleaner/a/a/u;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"


# instance fields
.field public final i:Lcom/piriform/ccleaner/core/data/AndroidPackage;

.field private final j:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/data/AndroidPackage;Landroid/graphics/drawable/Drawable;Lcom/piriform/ccleaner/b/e;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/piriform/ccleaner/a/h;->q:Lcom/piriform/ccleaner/a/h;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->f:Lcom/piriform/ccleaner/a/c;

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 37
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/u;->i:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 38
    iput-object p3, p0, Lcom/piriform/ccleaner/a/a/u;->j:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/u;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 74
    .line 3069
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/u;->j:Landroid/graphics/drawable/Drawable;

    .line 74
    return-object v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    return v0
.end method

.method protected final f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    .line 1048
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/u;->i:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1103
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/piriform/ccleaner/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2048
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/u;->i:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 2103
    iget-object v1, v1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
