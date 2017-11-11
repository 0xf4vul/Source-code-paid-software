.class public final Lcom/piriform/ccleaner/core/data/AndroidPackage$b;
.super Lcom/piriform/ccleaner/core/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/data/AndroidPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/d",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/piriform/ccleaner/core/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 43
    check-cast p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    check-cast p2, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1047
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/data/AndroidPackage$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-static {p1}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 1050
    :cond_0
    invoke-static {p2}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
