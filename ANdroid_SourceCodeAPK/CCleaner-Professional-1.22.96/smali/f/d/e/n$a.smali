.class final enum Lf/d/e/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lf/d/e/n$a;",
        ">;",
        "Lf/c/e",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/d/e/n$a;

.field private static final synthetic b:[Lf/d/e/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lf/d/e/n$a;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1}, Lf/d/e/n$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/d/e/n$a;->a:Lf/d/e/n$a;

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lf/d/e/n$a;

    const/4 v1, 0x0

    sget-object v2, Lf/d/e/n$a;->a:Lf/d/e/n$a;

    aput-object v2, v0, v1

    sput-object v0, Lf/d/e/n$a;->b:[Lf/d/e/n$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf/d/e/n$a;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lf/d/e/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lf/d/e/n$a;

    return-object v0
.end method

.method public static values()[Lf/d/e/n$a;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lf/d/e/n$a;->b:[Lf/d/e/n$a;

    invoke-virtual {v0}, [Lf/d/e/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/e/n$a;

    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 62
    return-object v0
.end method
