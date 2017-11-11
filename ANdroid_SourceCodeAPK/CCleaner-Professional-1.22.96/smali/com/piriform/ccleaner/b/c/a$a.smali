.class public final enum Lcom/piriform/ccleaner/b/c/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/b/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/b/c/a$a;

.field public static final enum b:Lcom/piriform/ccleaner/b/c/a$a;

.field private static final synthetic d:[Lcom/piriform/ccleaner/b/c/a$a;


# instance fields
.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/piriform/ccleaner/b/c/a$a;

    const-string/jumbo v1, "MAIN_SCREEN"

    const-string/jumbo v2, "Main_Screen"

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/b/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/b/c/a$a;->a:Lcom/piriform/ccleaner/b/c/a$a;

    .line 40
    new-instance v0, Lcom/piriform/ccleaner/b/c/a$a;

    const-string/jumbo v1, "NOTIFICATION"

    const-string/jumbo v2, "Notification"

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/b/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/b/c/a$a;->b:Lcom/piriform/ccleaner/b/c/a$a;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/piriform/ccleaner/b/c/a$a;

    sget-object v1, Lcom/piriform/ccleaner/b/c/a$a;->a:Lcom/piriform/ccleaner/b/c/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/b/c/a$a;->b:Lcom/piriform/ccleaner/b/c/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/piriform/ccleaner/b/c/a$a;->d:[Lcom/piriform/ccleaner/b/c/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/piriform/ccleaner/b/c/a$a;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/b/c/a$a;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/piriform/ccleaner/b/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/c/a$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/b/c/a$a;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/piriform/ccleaner/b/c/a$a;->d:[Lcom/piriform/ccleaner/b/c/a$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/b/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/b/c/a$a;

    return-object v0
.end method
