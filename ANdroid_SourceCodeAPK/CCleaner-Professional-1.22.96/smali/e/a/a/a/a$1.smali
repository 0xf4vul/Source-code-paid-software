.class final Le/a/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/a/a/a/a;


# direct methods
.method constructor <init>(Le/a/a/a/a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Le/a/a/a/a$1;->a:Le/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 58
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 2016
    invoke-static {p1}, Le/a/a/a/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 1061
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3016
    invoke-static {p2}, Le/a/a/a/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 1061
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 58
    return v0
.end method
