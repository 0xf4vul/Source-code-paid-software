.class abstract Lf/d/e/b/b;
.super Lf/d/e/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/e/b/d",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final a:J


# instance fields
.field protected consumerNode:Lf/d/e/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/e/a/c",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-class v0, Lf/d/e/b/b;

    const-string/jumbo v1, "consumerNode"

    invoke-static {v0, v1}, Lf/d/e/b/ak;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lf/d/e/b/b;->a:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lf/d/e/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lf/d/e/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d/e/a/c",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lf/d/e/b/ak;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lf/d/e/b/b;->a:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/e/a/c;

    return-object v0
.end method

.method protected final a(Lf/d/e/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/e/a/c",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lf/d/e/b/b;->consumerNode:Lf/d/e/a/c;

    .line 61
    return-void
.end method
