.class public final enum Lcom/piriform/ccleaner/cleaning/advanced/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/cleaning/advanced/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/k;

.field public static final enum KILL_ADVANCED_CLEANING_SERVICE:Lcom/piriform/ccleaner/cleaning/advanced/k;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/k;

    const-string/jumbo v1, "KILL_ADVANCED_CLEANING_SERVICE"

    const-string/jumbo v2, "KILL_ADVANCED_CLEANING_SERVICE"

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/cleaning/advanced/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/k;->KILL_ADVANCED_CLEANING_SERVICE:Lcom/piriform/ccleaner/cleaning/advanced/k;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/piriform/ccleaner/cleaning/advanced/k;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/k;->KILL_ADVANCED_CLEANING_SERVICE:Lcom/piriform/ccleaner/cleaning/advanced/k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/k;->$VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/k;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/k;->value:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/k;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/piriform/ccleaner/cleaning/advanced/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/k;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/cleaning/advanced/k;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/k;->$VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/k;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/cleaning/advanced/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/cleaning/advanced/k;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/k;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/k;->value:Ljava/lang/String;

    return-object v0
.end method
