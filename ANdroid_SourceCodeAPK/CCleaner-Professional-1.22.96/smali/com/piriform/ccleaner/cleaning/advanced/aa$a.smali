.class final enum Lcom/piriform/ccleaner/cleaning/advanced/aa$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/cleaning/advanced/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/cleaning/advanced/aa$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

.field public static final enum NON_CLICKABLE_NODE:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

.field public static final enum STEP_COMPLETED:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

.field public static final enum STEP_SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

.field public static final enum TOO_MANY_MATCHING_CLICKABLE_NODES:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

.field public static final enum UNKNOWN_CLICK_ERROR:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    const-string/jumbo v1, "STEP_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->STEP_SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 55
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    const-string/jumbo v1, "STEP_COMPLETED"

    invoke-direct {v0, v1, v3}, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->STEP_COMPLETED:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 56
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    const-string/jumbo v1, "UNKNOWN_CLICK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->UNKNOWN_CLICK_ERROR:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 57
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    const-string/jumbo v1, "TOO_MANY_MATCHING_CLICKABLE_NODES"

    invoke-direct {v0, v1, v5}, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->TOO_MANY_MATCHING_CLICKABLE_NODES:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 58
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    const-string/jumbo v1, "NON_CLICKABLE_NODE"

    invoke-direct {v0, v1, v6}, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->NON_CLICKABLE_NODE:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->STEP_SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->STEP_COMPLETED:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->UNKNOWN_CLICK_ERROR:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->TOO_MANY_MATCHING_CLICKABLE_NODES:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->NON_CLICKABLE_NODE:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->$VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Lcom/piriform/ccleaner/cleaning/advanced/m;Z)Lcom/piriform/ccleaner/cleaning/advanced/aa$a;
    .locals 1

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/advanced/m;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->STEP_COMPLETED:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 71
    :goto_0
    return-object v0

    .line 69
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->STEP_SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    goto :goto_0
.end method

.method public static from(Ljava/lang/Exception;)Lcom/piriform/ccleaner/cleaning/advanced/aa$a;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->UNKNOWN_CLICK_ERROR:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 77
    instance-of v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/z;

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->NON_CLICKABLE_NODE:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 81
    :cond_0
    instance-of v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/aj;

    if-eqz v1, :cond_1

    .line 82
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->TOO_MANY_MATCHING_CLICKABLE_NODES:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    .line 85
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/aa$a;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/cleaning/advanced/aa$a;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->$VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    return-object v0
.end method


# virtual methods
.method public final isFailure()Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->STEP_SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
