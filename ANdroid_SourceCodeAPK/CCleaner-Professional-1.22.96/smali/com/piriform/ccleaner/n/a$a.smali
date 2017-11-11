.class public final enum Lcom/piriform/ccleaner/n/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/n/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/n/a$a;

.field public static final enum b:Lcom/piriform/ccleaner/n/a$a;

.field public static final enum c:Lcom/piriform/ccleaner/n/a$a;

.field public static final enum d:Lcom/piriform/ccleaner/n/a$a;

.field public static final enum e:Lcom/piriform/ccleaner/n/a$a;

.field private static final synthetic g:[Lcom/piriform/ccleaner/n/a$a;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/piriform/ccleaner/n/a$a;

    const-string/jumbo v1, "INCOMING_CALLS"

    const-string/jumbo v2, "incomingCalls"

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/n/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/n/a$a;->a:Lcom/piriform/ccleaner/n/a$a;

    .line 32
    new-instance v0, Lcom/piriform/ccleaner/n/a$a;

    const-string/jumbo v1, "OUTGOING_CALLS"

    const-string/jumbo v2, "outgoingCalls"

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/n/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/n/a$a;->b:Lcom/piriform/ccleaner/n/a$a;

    .line 33
    new-instance v0, Lcom/piriform/ccleaner/n/a$a;

    const-string/jumbo v1, "MISSED_CALLS"

    const-string/jumbo v2, "missedCalls"

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/n/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/n/a$a;->c:Lcom/piriform/ccleaner/n/a$a;

    .line 34
    new-instance v0, Lcom/piriform/ccleaner/n/a$a;

    const-string/jumbo v1, "INCOMING_MESSAGES"

    const-string/jumbo v2, "incomingMessages"

    invoke-direct {v0, v1, v6, v2}, Lcom/piriform/ccleaner/n/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/n/a$a;->d:Lcom/piriform/ccleaner/n/a$a;

    .line 35
    new-instance v0, Lcom/piriform/ccleaner/n/a$a;

    const-string/jumbo v1, "OUTGOING_MESSAGES"

    const-string/jumbo v2, "outgoingMessages"

    invoke-direct {v0, v1, v7, v2}, Lcom/piriform/ccleaner/n/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/n/a$a;->e:Lcom/piriform/ccleaner/n/a$a;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/piriform/ccleaner/n/a$a;

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->a:Lcom/piriform/ccleaner/n/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->b:Lcom/piriform/ccleaner/n/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->c:Lcom/piriform/ccleaner/n/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->d:Lcom/piriform/ccleaner/n/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/n/a$a;->e:Lcom/piriform/ccleaner/n/a$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/piriform/ccleaner/n/a$a;->g:[Lcom/piriform/ccleaner/n/a$a;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/piriform/ccleaner/n/a$a;->f:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/piriform/ccleaner/n/a$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    .line 1044
    iget-object v0, p0, Lcom/piriform/ccleaner/n/a$a;->f:Ljava/lang/String;

    .line 30
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/n/a$a;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/piriform/ccleaner/n/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/n/a$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/n/a$a;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/piriform/ccleaner/n/a$a;->g:[Lcom/piriform/ccleaner/n/a$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/n/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/n/a$a;

    return-object v0
.end method
