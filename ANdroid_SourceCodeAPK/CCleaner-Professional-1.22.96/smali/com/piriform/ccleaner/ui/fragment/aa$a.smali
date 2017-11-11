.class final Lcom/piriform/ccleaner/ui/fragment/aa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/v/b",
        "<",
        "Lcom/piriform/ccleaner/core/a/b",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/core/data/f;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/data/f;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$a;->a:Lcom/piriform/ccleaner/core/data/f;

    .line 307
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 302
    check-cast p1, Lcom/piriform/ccleaner/core/a/b;

    .line 2059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 1312
    instance-of v1, v0, Lcom/piriform/ccleaner/core/data/f;

    if-eqz v1, :cond_1

    .line 1313
    check-cast v0, Lcom/piriform/ccleaner/core/data/f;

    .line 1315
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$a;->a:Lcom/piriform/ccleaner/core/data/f;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/data/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$a;->a:Lcom/piriform/ccleaner/core/data/f;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/data/f;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/data/f;->b(Ljava/util/Set;)Z

    move-result v0

    .line 1318
    :goto_0
    return v0

    .line 3048
    :cond_0
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/f;->f:Ljava/lang/String;

    .line 1318
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$a;->a:Lcom/piriform/ccleaner/core/data/f;

    .line 4048
    iget-object v1, v1, Lcom/piriform/ccleaner/core/data/f;->f:Ljava/lang/String;

    .line 1318
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1321
    :cond_1
    const/4 v0, 0x0

    .line 302
    goto :goto_0
.end method
