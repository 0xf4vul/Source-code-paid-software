.class public final enum Lf/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lf/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/c$a;

.field public static final enum b:Lf/c$a;

.field public static final enum c:Lf/c$a;

.field private static final synthetic d:[Lf/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Lf/c$a;

    const-string/jumbo v1, "OnNext"

    invoke-direct {v0, v1, v2}, Lf/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/c$a;->a:Lf/c$a;

    new-instance v0, Lf/c$a;

    const-string/jumbo v1, "OnError"

    invoke-direct {v0, v1, v3}, Lf/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/c$a;->b:Lf/c$a;

    new-instance v0, Lf/c$a;

    const-string/jumbo v1, "OnCompleted"

    invoke-direct {v0, v1, v4}, Lf/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/c$a;->c:Lf/c$a;

    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Lf/c$a;

    sget-object v1, Lf/c$a;->a:Lf/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lf/c$a;->b:Lf/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lf/c$a;->c:Lf/c$a;

    aput-object v1, v0, v4

    sput-object v0, Lf/c$a;->d:[Lf/c$a;

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
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf/c$a;
    .locals 1

    .prologue
    .line 173
    const-class v0, Lf/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lf/c$a;

    return-object v0
.end method

.method public static values()[Lf/c$a;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lf/c$a;->d:[Lf/c$a;

    invoke-virtual {v0}, [Lf/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/c$a;

    return-object v0
.end method
